; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngsocketlist_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ng_socketlist\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ngsocklist = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ngs_mod_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngs_mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @ngsocketlist_mtx, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  br label %21

12:                                               ; preds = %3
  %13 = call i32 @LIST_EMPTY(i32* @ngsocklist)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %7, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %9
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
