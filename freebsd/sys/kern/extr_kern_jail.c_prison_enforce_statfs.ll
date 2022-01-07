; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_enforce_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_enforce_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.prison* }
%struct.prison = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.statfs = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"[restricted]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prison_enforce_statfs(%struct.ucred* %0, %struct.mount* %1, %struct.statfs* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.prison*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store %struct.statfs* %2, %struct.statfs** %6, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.ucred*, %struct.ucred** %4, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.prison*, %struct.prison** %17, align 8
  store %struct.prison* %18, %struct.prison** %9, align 8
  %19 = load %struct.prison*, %struct.prison** %9, align 8
  %20 = getelementptr inbounds %struct.prison, %struct.prison* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %90

24:                                               ; preds = %3
  %25 = load %struct.ucred*, %struct.ucred** %4, align 8
  %26 = load %struct.mount*, %struct.mount** %5, align 8
  %27 = call i64 @prison_canseemount(%struct.ucred* %25, %struct.mount* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.statfs*, %struct.statfs** %6, align 8
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @bzero(i8* %32, i32 8)
  %34 = load %struct.statfs*, %struct.statfs** %6, align 8
  %35 = getelementptr inbounds %struct.statfs, %struct.statfs* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlcpy(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 8)
  store i32 1, i32* %11, align 4
  br label %90

38:                                               ; preds = %24
  %39 = load %struct.prison*, %struct.prison** %9, align 8
  %40 = getelementptr inbounds %struct.prison, %struct.prison* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.mount*, %struct.mount** %42, align 8
  %44 = load %struct.mount*, %struct.mount** %5, align 8
  %45 = icmp eq %struct.mount* %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.statfs*, %struct.statfs** %6, align 8
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @bzero(i8* %49, i32 8)
  %51 = load %struct.statfs*, %struct.statfs** %6, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8 47, i8* %53, align 1
  store i32 1, i32* %11, align 4
  br label %90

54:                                               ; preds = %38
  %55 = load %struct.prison*, %struct.prison** %9, align 8
  %56 = getelementptr inbounds %struct.prison, %struct.prison* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %90

61:                                               ; preds = %54
  %62 = load %struct.prison*, %struct.prison** %9, align 8
  %63 = getelementptr inbounds %struct.prison, %struct.prison* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strlen(i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load %struct.statfs*, %struct.statfs** %6, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = trunc i64 %13 to i32
  %72 = call i32 @strlcpy(i8* %15, i8* %70, i32 %71)
  %73 = load %struct.statfs*, %struct.statfs** %6, align 8
  %74 = getelementptr inbounds %struct.statfs, %struct.statfs* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @bzero(i8* %75, i32 8)
  %77 = load i8, i8* %15, align 16
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %61
  %81 = load %struct.statfs*, %struct.statfs** %6, align 8
  %82 = getelementptr inbounds %struct.statfs, %struct.statfs* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8 47, i8* %83, align 1
  br label %89

84:                                               ; preds = %61
  %85 = load %struct.statfs*, %struct.statfs** %6, align 8
  %86 = getelementptr inbounds %struct.statfs, %struct.statfs* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlcpy(i8* %87, i8* %15, i32 8)
  br label %89

89:                                               ; preds = %84, %80
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %60, %46, %29, %23
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %11, align 4
  switch i32 %92, label %94 [
    i32 0, label %93
    i32 1, label %93
  ]

93:                                               ; preds = %90, %90
  ret void

94:                                               ; preds = %90
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @prison_canseemount(%struct.ucred*, %struct.mount*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @strlen(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
