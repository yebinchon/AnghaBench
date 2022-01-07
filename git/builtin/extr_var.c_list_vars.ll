; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_var.c_list_vars.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_var.c_list_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_var = type { i8* (i32)*, i8* }

@git_vars = common dso_local global %struct.git_var* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_vars() #0 {
  %1 = alloca %struct.git_var*, align 8
  %2 = alloca i8*, align 8
  %3 = load %struct.git_var*, %struct.git_var** @git_vars, align 8
  store %struct.git_var* %3, %struct.git_var** %1, align 8
  br label %4

4:                                                ; preds = %22, %0
  %5 = load %struct.git_var*, %struct.git_var** %1, align 8
  %6 = getelementptr inbounds %struct.git_var, %struct.git_var* %5, i32 0, i32 0
  %7 = load i8* (i32)*, i8* (i32)** %6, align 8
  %8 = icmp ne i8* (i32)* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = load %struct.git_var*, %struct.git_var** %1, align 8
  %11 = getelementptr inbounds %struct.git_var, %struct.git_var* %10, i32 0, i32 0
  %12 = load i8* (i32)*, i8* (i32)** %11, align 8
  %13 = call i8* %12(i32 0)
  store i8* %13, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.git_var*, %struct.git_var** %1, align 8
  %17 = getelementptr inbounds %struct.git_var, %struct.git_var* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %15, %9
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.git_var*, %struct.git_var** %1, align 8
  %24 = getelementptr inbounds %struct.git_var, %struct.git_var* %23, i32 1
  store %struct.git_var* %24, %struct.git_var** %1, align 8
  br label %4

25:                                               ; preds = %4
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
