; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_init_resolver.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_init_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@qhead = common dso_local global i32 0, align 4
@_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RES_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"res_init failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@resfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"couldn't create socket\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"couldn't make resolver socket non-blocking\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_init_resolver() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TAILQ_INIT(i32* @qhead)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_res, i32 0, i32 0), align 4
  %4 = load i32, i32* @RES_INIT, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @res_init()
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @yp_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %28

12:                                               ; preds = %7, %0
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* @resfd, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @yp_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load i32, i32* @resfd, align 4
  %21 = load i32, i32* @F_SETFL, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = call i32 @fcntl(i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @yp_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %25, %17, %10
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @res_init(...) #1

declare dso_local i32 @yp_error(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
