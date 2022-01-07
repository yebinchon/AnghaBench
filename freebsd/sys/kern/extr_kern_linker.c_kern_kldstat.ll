; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_kern_kldstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32 }
%struct.kld_file_stat = type { i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@kld_sx = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_kldstat(%struct.thread* %0, i32 %1, %struct.kld_file_stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kld_file_stat*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kld_file_stat* %2, %struct.kld_file_stat** %7, align 8
  %10 = call i32 @sx_xlock(i32* @kld_sx)
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_3__* @linker_find_file_by_id(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @sx_xunlock(i32* @kld_sx)
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %4, align 4
  br label %82

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 8, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %33 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @bcopy(i32 %31, i32* %35, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %42 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %47 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %52 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %57 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %28
  store i32 8, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kld_file_stat*, %struct.kld_file_stat** %7, align 8
  %72 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @bcopy(i32 %70, i32* %74, i32 %75)
  %77 = call i32 @sx_xunlock(i32* @kld_sx)
  %78 = load %struct.thread*, %struct.thread** %5, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 0, i64* %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %67, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.TYPE_3__* @linker_find_file_by_id(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
