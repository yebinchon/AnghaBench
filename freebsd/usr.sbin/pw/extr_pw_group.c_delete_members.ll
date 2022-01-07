; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_delete_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_delete_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32** }

@.str = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group*, i8*)* @delete_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_members(%struct.group* %0, i8* %1) #0 {
  %3 = alloca %struct.group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.group*, %struct.group** %3, align 8
  %8 = getelementptr inbounds %struct.group, %struct.group* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = icmp eq i32** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strtok(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %83, %12
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %85

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load %struct.group*, %struct.group** %3, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.group*, %struct.group** %3, align 8
  %30 = getelementptr inbounds %struct.group, %struct.group* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strcmp(i32* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %44

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %19

44:                                               ; preds = %39, %19
  %45 = load %struct.group*, %struct.group** %3, align 8
  %46 = getelementptr inbounds %struct.group, %struct.group* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %83

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %79, %54
  %56 = load %struct.group*, %struct.group** %3, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load %struct.group*, %struct.group** %3, align 8
  %66 = getelementptr inbounds %struct.group, %struct.group* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %67, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.group*, %struct.group** %3, align 8
  %74 = getelementptr inbounds %struct.group, %struct.group* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %72, i32** %78, align 8
  br label %79

79:                                               ; preds = %64
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %55

82:                                               ; preds = %55
  br label %83

83:                                               ; preds = %82, %53
  %84 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %84, i8** %5, align 8
  br label %15

85:                                               ; preds = %11, %15
  ret void
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
