; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.group = type { i32 }

@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i32)* @group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @group(%struct.passwd* %0, i32 %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %14 = call i32 @sysconf(i32 %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  %25 = load %struct.passwd*, %struct.passwd** %3, align 8
  %26 = icmp ne %struct.passwd* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.passwd*, %struct.passwd** %3, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.passwd*, %struct.passwd** %3, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @getgrouplist(i32 %32, i32 %35, i32* %36, i32* %9)
  br label %42

38:                                               ; preds = %24
  %39 = load i64, i64* %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @getgroups(i64 %39, i32* %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  store i8* %46, i8** %12, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %89, %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = icmp eq i32 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %89

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.group* @getgrgid(i32 %64)
  store %struct.group* %65, %struct.group** %5, align 8
  %66 = icmp ne %struct.group* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.group*, %struct.group** %5, align 8
  %70 = getelementptr inbounds %struct.group, %struct.group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* %68, i32 %71)
  br label %82

73:                                               ; preds = %63
  %74 = load i8*, i8** %12, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, ...) @printf(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %67
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %87

83:                                               ; preds = %60
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, ...) @printf(i8* %84, i32 %85)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %87

87:                                               ; preds = %83, %82
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %59
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %47

92:                                               ; preds = %47
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @free(i32* %94)
  ret void
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getgrouplist(i32, i32, i32*, i32*) #1

declare dso_local i32 @getgroups(i64, i32*) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
