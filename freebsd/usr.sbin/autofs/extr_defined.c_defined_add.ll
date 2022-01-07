; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.defined_value = type { i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"variable %s already defined\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"defining variable %s=%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@defined_values = common dso_local global i32 0, align 4
@d_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @defined_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defined_add(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.defined_value*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @defined_find(i8* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @log_debugx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %16)
  %18 = call %struct.defined_value* @calloc(i32 1, i32 16)
  store %struct.defined_value* %18, %struct.defined_value** %5, align 8
  %19 = load %struct.defined_value*, %struct.defined_value** %5, align 8
  %20 = icmp eq %struct.defined_value* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @checked_strdup(i8* %24)
  %26 = load %struct.defined_value*, %struct.defined_value** %5, align 8
  %27 = getelementptr inbounds %struct.defined_value, %struct.defined_value* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @checked_strdup(i8* %28)
  %30 = load %struct.defined_value*, %struct.defined_value** %5, align 8
  %31 = getelementptr inbounds %struct.defined_value, %struct.defined_value* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.defined_value*, %struct.defined_value** %5, align 8
  %33 = load i32, i32* @d_next, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* @defined_values, %struct.defined_value* %32, i32 %33)
  ret void
}

declare dso_local i8* @defined_find(i8*) #1

declare dso_local i32 @log_errx(i32, i8*, i8*) #1

declare dso_local i32 @log_debugx(i8*, i8*, i8*) #1

declare dso_local %struct.defined_value* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.defined_value*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
