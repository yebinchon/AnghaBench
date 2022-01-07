; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_var.c_read_var.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_var.c_read_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_var = type { i8* (i32)*, i32 }

@git_vars = common dso_local global %struct.git_var* null, align 8
@IDENT_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @read_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_var(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.git_var*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct.git_var*, %struct.git_var** @git_vars, align 8
  store %struct.git_var* %5, %struct.git_var** %3, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.git_var*, %struct.git_var** %3, align 8
  %8 = getelementptr inbounds %struct.git_var, %struct.git_var* %7, i32 0, i32 0
  %9 = load i8* (i32)*, i8* (i32)** %8, align 8
  %10 = icmp ne i8* (i32)* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.git_var*, %struct.git_var** %3, align 8
  %14 = getelementptr inbounds %struct.git_var, %struct.git_var* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strcmp(i8* %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.git_var*, %struct.git_var** %3, align 8
  %20 = getelementptr inbounds %struct.git_var, %struct.git_var* %19, i32 0, i32 0
  %21 = load i8* (i32)*, i8* (i32)** %20, align 8
  %22 = load i32, i32* @IDENT_STRICT, align 4
  %23 = call i8* %21(i32 %22)
  store i8* %23, i8** %4, align 8
  br label %28

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.git_var*, %struct.git_var** %3, align 8
  %27 = getelementptr inbounds %struct.git_var, %struct.git_var* %26, i32 1
  store %struct.git_var* %27, %struct.git_var** %3, align 8
  br label %6

28:                                               ; preds = %18, %6
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
