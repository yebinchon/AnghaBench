; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Account_Set_Ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Account_Set_Ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radacct = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.in_addr = type { i32 }

@PROTO_IPCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_Account_Set_Ip(%struct.radacct* %0, %struct.in_addr* %1, %struct.in_addr* %2) #0 {
  %4 = alloca %struct.radacct*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.in_addr*, align 8
  store %struct.radacct* %0, %struct.radacct** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  store %struct.in_addr* %2, %struct.in_addr** %6, align 8
  %7 = load i32, i32* @PROTO_IPCP, align 4
  %8 = load %struct.radacct*, %struct.radacct** %4, align 8
  %9 = getelementptr inbounds %struct.radacct, %struct.radacct* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.radacct*, %struct.radacct** %4, align 8
  %11 = getelementptr inbounds %struct.radacct, %struct.radacct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %15 = call i32 @memcpy(i32* %13, %struct.in_addr* %14, i32 4)
  %16 = load %struct.radacct*, %struct.radacct** %4, align 8
  %17 = getelementptr inbounds %struct.radacct, %struct.radacct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.in_addr* %20, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
