; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_diagnose_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_diagnose_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.mlx_command = type { i32*, i64 }

@mlx_diagnose_command.unkmsg = internal global [80 x i8] zeroinitializer, align 16
@mlx_messages = common dso_local global %struct.TYPE_2__* null, align 8
@mlx_status_messages = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [39 x i8] c"unknown response 0x%x for command 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx_command*)* @mlx_diagnose_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlx_diagnose_command(%struct.mlx_command* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx_messages, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %59

13:                                               ; preds = %5
  %14 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %15 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx_messages, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %13
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx_messages, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %26, %13
  %35 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %36 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx_messages, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %37, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i8**, i8*** @mlx_status_messages, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx_messages, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8*, i8** %46, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %2, align 8
  br label %70

55:                                               ; preds = %34, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %61 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %65 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @mlx_diagnose_command.unkmsg, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @mlx_diagnose_command.unkmsg, i64 0, i64 0), i8** %2, align 8
  br label %70

70:                                               ; preds = %59, %45
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
