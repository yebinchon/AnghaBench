; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_gexpand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_gexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i32 }
%struct.grouphead = type { %struct.group*, i32 }
%struct.group = type { i8*, %struct.group* }

@gexpand.depth = internal global i32 0, align 4
@MAXEXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Expanding alias to depth larger than %d\0A\00", align 1
@myname = common dso_local global i32 0, align 4
@GDEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @gexpand(%struct.name* %0, %struct.grouphead* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.name*, align 8
  %6 = alloca %struct.name*, align 8
  %7 = alloca %struct.grouphead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.group*, align 8
  %11 = alloca %struct.grouphead*, align 8
  %12 = alloca %struct.name*, align 8
  %13 = alloca i8*, align 8
  store %struct.name* %0, %struct.name** %6, align 8
  store %struct.grouphead* %1, %struct.grouphead** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @gexpand.depth, align 4
  %15 = load i32, i32* @MAXEXP, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @MAXEXP, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.name*, %struct.name** %6, align 8
  store %struct.name* %20, %struct.name** %5, align 8
  br label %100

21:                                               ; preds = %4
  %22 = load i32, i32* @gexpand.depth, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @gexpand.depth, align 4
  %24 = load %struct.grouphead*, %struct.grouphead** %7, align 8
  %25 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %24, i32 0, i32 0
  %26 = load %struct.group*, %struct.group** %25, align 8
  store %struct.group* %26, %struct.group** %10, align 8
  br label %27

27:                                               ; preds = %92, %21
  %28 = load %struct.group*, %struct.group** %10, align 8
  %29 = icmp ne %struct.group* %28, null
  br i1 %29, label %30, label %96

30:                                               ; preds = %27
  %31 = load %struct.group*, %struct.group** %10, align 8
  %32 = getelementptr inbounds %struct.group, %struct.group* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %58

39:                                               ; preds = %30
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.grouphead*, %struct.grouphead** %7, align 8
  %42 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @strcmp(i8* %40, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %58

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = call %struct.grouphead* @findgroup(i8* %48)
  store %struct.grouphead* %49, %struct.grouphead** %11, align 8
  %50 = icmp ne %struct.grouphead* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.name*, %struct.name** %6, align 8
  %53 = load %struct.grouphead*, %struct.grouphead** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.name* @gexpand(%struct.name* %52, %struct.grouphead* %53, i32 %54, i32 %55)
  store %struct.name* %56, %struct.name** %6, align 8
  br label %92

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %46, %38
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.name* @nalloc(i8* %59, i32 %60)
  store %struct.name* %61, %struct.name** %12, align 8
  %62 = load %struct.group*, %struct.group** %10, align 8
  %63 = load %struct.grouphead*, %struct.grouphead** %7, align 8
  %64 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %63, i32 0, i32 0
  %65 = load %struct.group*, %struct.group** %64, align 8
  %66 = icmp eq %struct.group* %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.group*, %struct.group** %10, align 8
  %69 = getelementptr inbounds %struct.group, %struct.group* %68, i32 0, i32 1
  %70 = load %struct.group*, %struct.group** %69, align 8
  %71 = icmp eq %struct.group* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %88

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @myname, align 4
  %79 = call i64 @strcmp(i8* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @GDEL, align 4
  %83 = load %struct.name*, %struct.name** %12, align 8
  %84 = getelementptr inbounds %struct.name, %struct.name* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76, %73
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.name*, %struct.name** %6, align 8
  %90 = load %struct.name*, %struct.name** %12, align 8
  %91 = call %struct.name* @put(%struct.name* %89, %struct.name* %90)
  store %struct.name* %91, %struct.name** %6, align 8
  br label %92

92:                                               ; preds = %88, %51
  %93 = load %struct.group*, %struct.group** %10, align 8
  %94 = getelementptr inbounds %struct.group, %struct.group* %93, i32 0, i32 1
  %95 = load %struct.group*, %struct.group** %94, align 8
  store %struct.group* %95, %struct.group** %10, align 8
  br label %27

96:                                               ; preds = %27
  %97 = load i32, i32* @gexpand.depth, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @gexpand.depth, align 4
  %99 = load %struct.name*, %struct.name** %6, align 8
  store %struct.name* %99, %struct.name** %5, align 8
  br label %100

100:                                              ; preds = %96, %17
  %101 = load %struct.name*, %struct.name** %5, align 8
  ret %struct.name* %101
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.grouphead* @findgroup(i8*) #1

declare dso_local %struct.name* @nalloc(i8*, i32) #1

declare dso_local %struct.name* @put(%struct.name*, %struct.name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
