; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_init_reqid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_init_reqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { i32 }

@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@IPSEC_REQID_TRYCNT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@idhash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipsec_softc*)* @ipsec_init_reqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_init_reqid(%struct.ipsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %3, align 8
  %6 = load i32, i32* @SA_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @ipsec_ioctl_sx, i32 %6)
  %8 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32, i32* @IPSEC_REQID_TRYCNT, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %13
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = call i32 (...) @key_newreqid()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ipsec_check_reqid(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %15

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EEXIST, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ipsec_idhash(i32 %35)
  %37 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %38 = load i32, i32* @idhash, align 4
  %39 = call i32 @CK_LIST_INSERT_HEAD(i32 %36, %struct.ipsec_softc* %37, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %29, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @key_newreqid(...) #1

declare dso_local i64 @ipsec_check_reqid(i32) #1

declare dso_local i32 @CK_LIST_INSERT_HEAD(i32, %struct.ipsec_softc*, i32) #1

declare dso_local i32 @ipsec_idhash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
