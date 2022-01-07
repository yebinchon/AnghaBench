; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_canseemount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_canseemount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.prison* }
%struct.prison = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mount* }
%struct.mount = type { %struct.statfs }
%struct.statfs = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_canseemount(%struct.ucred* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca i64, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load %struct.prison*, %struct.prison** %10, align 8
  store %struct.prison* %11, %struct.prison** %6, align 8
  %12 = load %struct.prison*, %struct.prison** %6, align 8
  %13 = getelementptr inbounds %struct.prison, %struct.prison* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.prison*, %struct.prison** %6, align 8
  %19 = getelementptr inbounds %struct.prison, %struct.prison* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mount*, %struct.mount** %21, align 8
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = icmp eq %struct.mount* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %17
  %27 = load %struct.prison*, %struct.prison** %6, align 8
  %28 = getelementptr inbounds %struct.prison, %struct.prison* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %26
  %34 = load %struct.prison*, %struct.prison** %6, align 8
  %35 = getelementptr inbounds %struct.prison, %struct.prison* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %79

40:                                               ; preds = %33
  %41 = load %struct.prison*, %struct.prison** %6, align 8
  %42 = getelementptr inbounds %struct.prison, %struct.prison* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strlen(i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.mount*, %struct.mount** %5, align 8
  %46 = getelementptr inbounds %struct.mount, %struct.mount* %45, i32 0, i32 0
  store %struct.statfs* %46, %struct.statfs** %7, align 8
  %47 = load %struct.prison*, %struct.prison** %6, align 8
  %48 = getelementptr inbounds %struct.prison, %struct.prison* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.statfs*, %struct.statfs** %7, align 8
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @strncmp(i32 %49, i8* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %3, align 4
  br label %79

58:                                               ; preds = %40
  %59 = load %struct.statfs*, %struct.statfs** %7, align 8
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load %struct.statfs*, %struct.statfs** %7, align 8
  %69 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 47
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOENT, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %67, %58
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %76, %56, %39, %31, %25, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
