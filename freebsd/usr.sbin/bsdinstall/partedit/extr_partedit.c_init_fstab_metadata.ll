; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_partedit.c_init_fstab_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_partedit.c_init_fstab_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.partition_metadata = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@part_metadata = common dso_local global i32 0, align 4
@metadata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_fstab_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fstab_metadata() #0 {
  %1 = alloca %struct.fstab*, align 8
  %2 = alloca %struct.partition_metadata*, align 8
  %3 = call i32 (...) @setfsent()
  br label %4

4:                                                ; preds = %25, %0
  %5 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %5, %struct.fstab** %1, align 8
  %6 = icmp ne %struct.fstab* %5, null
  br i1 %6, label %7, label %88

7:                                                ; preds = %4
  %8 = call %struct.partition_metadata* @calloc(i32 1, i32 24)
  store %struct.partition_metadata* %8, %struct.partition_metadata** %2, align 8
  %9 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.fstab*, %struct.fstab** %1, align 8
  %12 = getelementptr inbounds %struct.fstab, %struct.fstab* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @strncmp(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %7
  %17 = load %struct.fstab*, %struct.fstab** %1, align 8
  %18 = getelementptr inbounds %struct.fstab, %struct.fstab* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  %21 = call i8* @strdup(i32* %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %24 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %16, %7
  %26 = call %struct.TYPE_2__* @malloc(i32 48)
  %27 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %28 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %27, i32 0, i32 1
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.fstab*, %struct.fstab** %1, align 8
  %30 = getelementptr inbounds %struct.fstab, %struct.fstab* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @strdup(i32* %31)
  %33 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %34 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i8* %32, i8** %36, align 8
  %37 = load %struct.fstab*, %struct.fstab** %1, align 8
  %38 = getelementptr inbounds %struct.fstab, %struct.fstab* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @strdup(i32* %39)
  %41 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %42 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  store i8* %40, i8** %44, align 8
  %45 = load %struct.fstab*, %struct.fstab** %1, align 8
  %46 = getelementptr inbounds %struct.fstab, %struct.fstab* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = call i8* @strdup(i32* %47)
  %49 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %50 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i8* %48, i8** %52, align 8
  %53 = load %struct.fstab*, %struct.fstab** %1, align 8
  %54 = getelementptr inbounds %struct.fstab, %struct.fstab* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @strdup(i32* %55)
  %57 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %58 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i8* %56, i8** %60, align 8
  %61 = load %struct.fstab*, %struct.fstab** %1, align 8
  %62 = getelementptr inbounds %struct.fstab, %struct.fstab* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @strdup(i32* %63)
  %65 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %66 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load %struct.fstab*, %struct.fstab** %1, align 8
  %70 = getelementptr inbounds %struct.fstab, %struct.fstab* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %73 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.fstab*, %struct.fstab** %1, align 8
  %77 = getelementptr inbounds %struct.fstab, %struct.fstab* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %80 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %84 = getelementptr inbounds %struct.partition_metadata, %struct.partition_metadata* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.partition_metadata*, %struct.partition_metadata** %2, align 8
  %86 = load i32, i32* @metadata, align 4
  %87 = call i32 @TAILQ_INSERT_TAIL(i32* @part_metadata, %struct.partition_metadata* %85, i32 %86)
  br label %4

88:                                               ; preds = %4
  ret void
}

declare dso_local i32 @setfsent(...) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local %struct.partition_metadata* @calloc(i32, i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local %struct.TYPE_2__* @malloc(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.partition_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
