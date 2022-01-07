; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_mremote_clientchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_mremote_clientchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MOUSE_PROTO_X10MOUSEREM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed accept on mouse remote socket\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"remote client connect...accepted\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"another remote client connect...disconnected\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"remote client disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mremote_clientchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mremote_clientchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 8
  %7 = load i64, i64* @MOUSE_PROTO_X10MOUSEREM, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  store i32 4, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 2), align 4
  %15 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %16 = call i32 @accept(i32 %14, %struct.sockaddr* %15, i32* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @logwarnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %26 = call i32 @debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @close(i32 %28)
  %30 = call i32 @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %24
  br label %36

32:                                               ; preds = %10
  %33 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  %35 = call i32 @close(i32 %34)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 8
  br label %36

36:                                               ; preds = %9, %32, %31
  ret void
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @logwarnx(i8*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
