; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"file not signed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"file contains signature\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"file already signed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.executable*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @checked_fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @checked_fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %11, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = call i64 (...) @caph_enter()
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = call %struct.executable* @calloc(i32 1, i32 16)
  store %struct.executable* %27, %struct.executable** %13, align 8
  %28 = load %struct.executable*, %struct.executable** %13, align 8
  %29 = icmp eq %struct.executable* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.executable*, %struct.executable** %13, align 8
  %35 = getelementptr inbounds %struct.executable, %struct.executable* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.executable*, %struct.executable** %13, align 8
  %38 = getelementptr inbounds %struct.executable, %struct.executable* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.executable*, %struct.executable** %13, align 8
  %40 = call i32 @load(%struct.executable* %39)
  %41 = load %struct.executable*, %struct.executable** %13, align 8
  %42 = call i32 @parse(%struct.executable* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %32
  %46 = load %struct.executable*, %struct.executable** %13, align 8
  %47 = call i64 @signature_size(%struct.executable* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.executable*, %struct.executable** %13, align 8
  %57 = call i32 @digest(%struct.executable* %56)
  %58 = load %struct.executable*, %struct.executable** %13, align 8
  %59 = call i32 @show_digest(%struct.executable* %58)
  %60 = load %struct.executable*, %struct.executable** %13, align 8
  %61 = call i32 @show_certificate(%struct.executable* %60)
  br label %62

62:                                               ; preds = %55, %51
  br label %90

63:                                               ; preds = %32
  %64 = load %struct.executable*, %struct.executable** %13, align 8
  %65 = call i64 @signature_size(%struct.executable* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %63
  %70 = load %struct.executable*, %struct.executable** %13, align 8
  %71 = call i32 @digest(%struct.executable* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.executable*, %struct.executable** %13, align 8
  %76 = call i32 @show_digest(%struct.executable* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.executable*, %struct.executable** %13, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @send_digest(%struct.executable* %78, i32 %79)
  %81 = load %struct.executable*, %struct.executable** %13, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @receive_signature(%struct.executable* %81, i32 %82)
  %84 = load %struct.executable*, %struct.executable** %13, align 8
  %85 = call i32 @update(%struct.executable* %84)
  %86 = load %struct.executable*, %struct.executable** %13, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @save(%struct.executable* %86, i32* %87, i8* %88)
  br label %90

90:                                               ; preds = %77, %62
  ret i32 0
}

declare dso_local i32* @checked_fopen(i8*, i8*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.executable* @calloc(i32, i32) #1

declare dso_local i32 @load(%struct.executable*) #1

declare dso_local i32 @parse(%struct.executable*) #1

declare dso_local i64 @signature_size(%struct.executable*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @digest(%struct.executable*) #1

declare dso_local i32 @show_digest(%struct.executable*) #1

declare dso_local i32 @show_certificate(%struct.executable*) #1

declare dso_local i32 @send_digest(%struct.executable*, i32) #1

declare dso_local i32 @receive_signature(%struct.executable*, i32) #1

declare dso_local i32 @update(%struct.executable*) #1

declare dso_local i32 @save(%struct.executable*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
