; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ipcomp.c_ipcomp_encapcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ipcomp.c_ipcomp_encapcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.secasvar = type { i32 }

@IPPROTO_IPCOMP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sockaddr_union*, %union.sockaddr_union*)* @ipcomp_encapcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_encapcheck(%union.sockaddr_union* %0, %union.sockaddr_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sockaddr_union*, align 8
  %5 = alloca %union.sockaddr_union*, align 8
  %6 = alloca %struct.secasvar*, align 8
  store %union.sockaddr_union* %0, %union.sockaddr_union** %4, align 8
  store %union.sockaddr_union* %1, %union.sockaddr_union** %5, align 8
  %7 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %8 = load %union.sockaddr_union*, %union.sockaddr_union** %5, align 8
  %9 = load i32, i32* @IPPROTO_IPCOMP, align 4
  %10 = call %struct.secasvar* @key_allocsa_tunnel(%union.sockaddr_union* %7, %union.sockaddr_union* %8, i32 %9)
  store %struct.secasvar* %10, %struct.secasvar** %6, align 8
  %11 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  %12 = icmp eq %struct.secasvar* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = call i32 @key_freesav(%struct.secasvar** %6)
  %16 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %17 = bitcast %union.sockaddr_union* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 64, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 64, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.secasvar* @key_allocsa_tunnel(%union.sockaddr_union*, %union.sockaddr_union*, i32) #1

declare dso_local i32 @key_freesav(%struct.secasvar**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
