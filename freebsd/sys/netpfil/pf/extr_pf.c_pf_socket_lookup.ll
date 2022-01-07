; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_socket_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_socket_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32 }
%struct.pf_pdesc = type { i32, i32, %struct.TYPE_9__, %struct.pf_addr*, %struct.pf_addr*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pf_addr = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.inpcb = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32 }

@UID_MAX = common dso_local global i32 0, align 4
@GID_MAX = common dso_local global i32 0, align 4
@V_tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@V_udbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@PF_IN = common dso_local global i32 0, align 4
@INPLOOKUP_RLOCKPCB = common dso_local global i32 0, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_socket_lookup(i32 %0, %struct.pf_pdesc* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_pdesc*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.pf_addr*, align 8
  %9 = alloca %struct.pf_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inpcbinfo*, align 8
  %13 = alloca %struct.inpcb*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pf_pdesc* %1, %struct.pf_pdesc** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %15 = load i32, i32* @UID_MAX, align 4
  %16 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %17 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @GID_MAX, align 4
  %20 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %21 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %24 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %66 [
    i32 129, label %26
    i32 128, label %46
  ]

26:                                               ; preds = %3
  %27 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %28 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %93

33:                                               ; preds = %26
  %34 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %35 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %41 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  store %struct.inpcbinfo* @V_tcbinfo, %struct.inpcbinfo** %12, align 8
  br label %67

46:                                               ; preds = %3
  %47 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %48 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %93

53:                                               ; preds = %46
  %54 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %55 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %61 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  store %struct.inpcbinfo* @V_udbinfo, %struct.inpcbinfo** %12, align 8
  br label %67

66:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %93

67:                                               ; preds = %53, %33
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PF_IN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %73 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %72, i32 0, i32 3
  %74 = load %struct.pf_addr*, %struct.pf_addr** %73, align 8
  store %struct.pf_addr* %74, %struct.pf_addr** %8, align 8
  %75 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %76 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %75, i32 0, i32 4
  %77 = load %struct.pf_addr*, %struct.pf_addr** %76, align 8
  store %struct.pf_addr* %77, %struct.pf_addr** %9, align 8
  br label %88

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %83 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %82, i32 0, i32 4
  %84 = load %struct.pf_addr*, %struct.pf_addr** %83, align 8
  store %struct.pf_addr* %84, %struct.pf_addr** %8, align 8
  %85 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %86 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %85, i32 0, i32 3
  %87 = load %struct.pf_addr*, %struct.pf_addr** %86, align 8
  store %struct.pf_addr* %87, %struct.pf_addr** %9, align 8
  br label %88

88:                                               ; preds = %78, %71
  %89 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %90 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %92 [
  ]

92:                                               ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %66, %52, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
