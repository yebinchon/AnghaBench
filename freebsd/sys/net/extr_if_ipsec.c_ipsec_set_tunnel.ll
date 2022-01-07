; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { i64, %struct.TYPE_2__*, %struct.secpolicy** }
%struct.TYPE_2__ = type { i32 }
%struct.secpolicy = type { i32 }
%struct.sockaddr = type { i64 }

@IPSEC_SPCOUNT = common dso_local global i32 0, align 4
@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipsec_softc*, %struct.sockaddr*, %struct.sockaddr*, i32)* @ipsec_set_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_set_tunnel(%struct.ipsec_softc* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipsec_softc*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.secpolicy*, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @SA_XLOCKED, align 4
  %19 = call i32 @sx_assert(i32* @ipsec_ioctl_sx, i32 %18)
  %20 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @ipsec_newpolicies(%struct.ipsec_softc* %20, %struct.secpolicy** %17, %struct.sockaddr* %21, %struct.sockaddr* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %4
  %27 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %28 = call i64 @key_register_ifnet(%struct.secpolicy** %17, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %17, i64 %37
  %39 = call i32 @key_freesp(%struct.secpolicy** %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* @EAGAIN, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %96

45:                                               ; preds = %26
  %46 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %47 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %52 = call i32 @ipsec_delete_tunnel(%struct.ipsec_softc* %51)
  br label %53

53:                                               ; preds = %50, %45
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %17, i64 %60
  %62 = load %struct.secpolicy*, %struct.secpolicy** %61, align 8
  %63 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %64 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %63, i32 0, i32 2
  %65 = load %struct.secpolicy**, %struct.secpolicy*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %65, i64 %67
  store %struct.secpolicy* %62, %struct.secpolicy** %68, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %74 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %77 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %79 = call i32 @ipsec_srchash(%struct.sockaddr* %78)
  %80 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %81 = load i32, i32* @srchash, align 4
  %82 = call i32 @CK_LIST_INSERT_HEAD(i32 %79, %struct.ipsec_softc* %80, i32 %81)
  br label %93

83:                                               ; preds = %4
  %84 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %87 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @ENOMEM, align 4
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %96

93:                                               ; preds = %72
  %94 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  %95 = call i32 @ipsec_set_running(%struct.ipsec_softc* %94)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %83, %43
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sx_assert(i32*, i32) #2

declare dso_local i64 @ipsec_newpolicies(%struct.ipsec_softc*, %struct.secpolicy**, %struct.sockaddr*, %struct.sockaddr*, i32) #2

declare dso_local i64 @key_register_ifnet(%struct.secpolicy**, i32) #2

declare dso_local i32 @key_freesp(%struct.secpolicy**) #2

declare dso_local i32 @ipsec_delete_tunnel(%struct.ipsec_softc*) #2

declare dso_local i32 @CK_LIST_INSERT_HEAD(i32, %struct.ipsec_softc*, i32) #2

declare dso_local i32 @ipsec_srchash(%struct.sockaddr*) #2

declare dso_local i32 @ipsec_set_running(%struct.ipsec_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
