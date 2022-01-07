; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_disksort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_disksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_queue_head = type { i64, i32, i32, %struct.bio* }
%struct.bio = type { i32, i64 }

@BIO_ORDERED = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@bioq_batchsize = common dso_local global i64 0, align 8
@bio_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioq_disksort(%struct.bio_queue_head* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio_queue_head*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  store %struct.bio_queue_head* %0, %struct.bio_queue_head** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BIO_ORDERED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %15, %struct.bio* %16)
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BIO_READ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BIO_WRITE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BIO_DELETE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %37, %struct.bio* %38)
  br label %115

40:                                               ; preds = %30, %24, %18
  %41 = load i64, i64* @bioq_batchsize, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %45 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @bioq_batchsize, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %50, %struct.bio* %51)
  br label %115

53:                                               ; preds = %43, %40
  store %struct.bio* null, %struct.bio** %6, align 8
  %54 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %55 = load %struct.bio*, %struct.bio** %4, align 8
  %56 = call i64 @bioq_bio_key(%struct.bio_queue_head* %54, %struct.bio* %55)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %58 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %57, i32 0, i32 2
  %59 = call %struct.bio* @TAILQ_FIRST(i32* %58)
  store %struct.bio* %59, %struct.bio** %5, align 8
  %60 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %61 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %60, i32 0, i32 3
  %62 = load %struct.bio*, %struct.bio** %61, align 8
  %63 = icmp ne %struct.bio* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %66 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %65, i32 0, i32 3
  %67 = load %struct.bio*, %struct.bio** %66, align 8
  store %struct.bio* %67, %struct.bio** %6, align 8
  %68 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %69 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %68, i32 0, i32 3
  %70 = load %struct.bio*, %struct.bio** %69, align 8
  %71 = load i32, i32* @bio_queue, align 4
  %72 = call %struct.bio* @TAILQ_NEXT(%struct.bio* %70, i32 %71)
  store %struct.bio* %72, %struct.bio** %5, align 8
  br label %73

73:                                               ; preds = %64, %53
  br label %74

74:                                               ; preds = %85, %73
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = icmp ne %struct.bio* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = call i64 @bioq_bio_key(%struct.bio_queue_head* %79, %struct.bio* %80)
  %82 = icmp sge i64 %78, %81
  br label %83

83:                                               ; preds = %77, %74
  %84 = phi i1 [ false, %74 ], [ %82, %77 ]
  br i1 %84, label %85, label %90

85:                                               ; preds = %83
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %86, %struct.bio** %6, align 8
  %87 = load %struct.bio*, %struct.bio** %5, align 8
  %88 = load i32, i32* @bio_queue, align 4
  %89 = call %struct.bio* @TAILQ_NEXT(%struct.bio* %87, i32 %88)
  store %struct.bio* %89, %struct.bio** %5, align 8
  br label %74

90:                                               ; preds = %83
  %91 = load %struct.bio*, %struct.bio** %6, align 8
  %92 = icmp eq %struct.bio* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %95 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %94, i32 0, i32 2
  %96 = load %struct.bio*, %struct.bio** %4, align 8
  %97 = load i32, i32* @bio_queue, align 4
  %98 = call i32 @TAILQ_INSERT_HEAD(i32* %95, %struct.bio* %96, i32 %97)
  br label %106

99:                                               ; preds = %90
  %100 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %101 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %100, i32 0, i32 2
  %102 = load %struct.bio*, %struct.bio** %6, align 8
  %103 = load %struct.bio*, %struct.bio** %4, align 8
  %104 = load i32, i32* @bio_queue, align 4
  %105 = call i32 @TAILQ_INSERT_AFTER(i32* %101, %struct.bio* %102, %struct.bio* %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %108 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %112 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %106, %49, %36, %14
  ret void
}

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i64 @bioq_bio_key(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.bio* @TAILQ_NEXT(%struct.bio*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.bio*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.bio*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
