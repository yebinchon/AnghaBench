; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkoptions.c_insert_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkoptions.c_insert_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_list = type { i8*, i8*, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@otab = common dso_local global i32 0, align 4
@o_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @insert_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_option(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.opt_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @check_duplicate(i8* %8, i8* %9)
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.opt_list*
  store %struct.opt_list* %12, %struct.opt_list** %7, align 8
  %13 = load %struct.opt_list*, %struct.opt_list** %7, align 8
  %14 = icmp eq %struct.opt_list* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @err(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.opt_list*, %struct.opt_list** %7, align 8
  %21 = getelementptr inbounds %struct.opt_list, %struct.opt_list* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.opt_list*, %struct.opt_list** %7, align 8
  %24 = getelementptr inbounds %struct.opt_list, %struct.opt_list* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.opt_list*, %struct.opt_list** %7, align 8
  %26 = getelementptr inbounds %struct.opt_list, %struct.opt_list* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.opt_list*, %struct.opt_list** %7, align 8
  %28 = load i32, i32* @o_next, align 4
  %29 = call i32 @SLIST_INSERT_HEAD(i32* @otab, %struct.opt_list* %27, i32 %28)
  ret void
}

declare dso_local i32 @check_duplicate(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.opt_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
