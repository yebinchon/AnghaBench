; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_keysock.c_key_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_keysock.c_key_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }

@raw_usrreqs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @key_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_sockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %5 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw_usrreqs, i32 0, i32 0), align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %8 = call i32 %5(%struct.socket* %6, %struct.sockaddr** %7)
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
