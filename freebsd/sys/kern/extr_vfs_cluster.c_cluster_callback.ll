; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@cluster_entry = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@B_DIRECT = common dso_local global i32 0, align 4
@B_RELBUF = common dso_local global i32 0, align 4
@cluster_pbuf_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @cluster_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_callback(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.buf*, %struct.buf** %2, align 8
  %7 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @BIO_ERROR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.buf*, %struct.buf** %2, align 8
  %18 = call i64 @buf_mapped(%struct.buf* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.buf*, %struct.buf** %2, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @trunc_page(i32 %24)
  %26 = load %struct.buf*, %struct.buf** %2, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pmap_qremove(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %16
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call %struct.buf* @TAILQ_FIRST(i32* %33)
  store %struct.buf* %34, %struct.buf** %4, align 8
  br label %35

35:                                               ; preds = %87, %30
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = icmp ne %struct.buf* %36, null
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 5
  %41 = load i32, i32* @cluster_entry, align 4
  %42 = call %struct.buf* @TAILQ_NEXT(%struct.TYPE_2__* %40, i32 %41)
  store %struct.buf* %42, %struct.buf** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @BIO_ERROR, align 4
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.buf*, %struct.buf** %4, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %84

54:                                               ; preds = %38
  %55 = load %struct.buf*, %struct.buf** %4, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.buf*, %struct.buf** %4, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @B_INVAL, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.buf*, %struct.buf** %4, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @BIO_ERROR, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.buf*, %struct.buf** %4, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.buf*, %struct.buf** %4, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @B_DIRECT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %54
  %78 = load i32, i32* @B_RELBUF, align 4
  %79 = load %struct.buf*, %struct.buf** %4, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %54
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.buf*, %struct.buf** %4, align 8
  %86 = call i32 @bufdone(%struct.buf* %85)
  br label %87

87:                                               ; preds = %84
  %88 = load %struct.buf*, %struct.buf** %3, align 8
  store %struct.buf* %88, %struct.buf** %4, align 8
  br label %35

89:                                               ; preds = %35
  %90 = load %struct.buf*, %struct.buf** %2, align 8
  %91 = call i32 @pbrelvp(%struct.buf* %90)
  %92 = load i32, i32* @cluster_pbuf_zone, align 4
  %93 = load %struct.buf*, %struct.buf** %2, align 8
  %94 = call i32 @uma_zfree(i32 %92, %struct.buf* %93)
  ret void
}

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local %struct.buf* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.buf* @TAILQ_NEXT(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @pbrelvp(%struct.buf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
