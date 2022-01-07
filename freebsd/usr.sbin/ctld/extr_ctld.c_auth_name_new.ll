; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_name_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_name_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_name = type { i32, %struct.auth_group* }
%struct.auth_group = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@an_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_name* @auth_name_new(%struct.auth_group* %0, i8* %1) #0 {
  %3 = alloca %struct.auth_group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.auth_name*, align 8
  store %struct.auth_group* %0, %struct.auth_group** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.auth_name* @calloc(i32 1, i32 16)
  store %struct.auth_name* %6, %struct.auth_name** %5, align 8
  %7 = load %struct.auth_name*, %struct.auth_name** %5, align 8
  %8 = icmp eq %struct.auth_name* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.auth_group*, %struct.auth_group** %3, align 8
  %13 = load %struct.auth_name*, %struct.auth_name** %5, align 8
  %14 = getelementptr inbounds %struct.auth_name, %struct.auth_name* %13, i32 0, i32 1
  store %struct.auth_group* %12, %struct.auth_group** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @checked_strdup(i8* %15)
  %17 = load %struct.auth_name*, %struct.auth_name** %5, align 8
  %18 = getelementptr inbounds %struct.auth_name, %struct.auth_name* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.auth_group*, %struct.auth_group** %3, align 8
  %20 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %19, i32 0, i32 0
  %21 = load %struct.auth_name*, %struct.auth_name** %5, align 8
  %22 = load i32, i32* @an_next, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* %20, %struct.auth_name* %21, i32 %22)
  %24 = load %struct.auth_name*, %struct.auth_name** %5, align 8
  ret %struct.auth_name* %24
}

declare dso_local %struct.auth_name* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.auth_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
