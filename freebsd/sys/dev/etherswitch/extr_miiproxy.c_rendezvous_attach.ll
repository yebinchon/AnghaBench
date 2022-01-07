; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_rendezvous_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_rendezvous_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rendezvous_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32, %struct.rendezvous_entry.0*)* }
%struct.rendezvous_entry.0 = type opaque
%struct.TYPE_3__ = type { i32 (i32, %struct.rendezvous_entry.1*)* }
%struct.rendezvous_entry.1 = type opaque
%struct.rendezvous_endpoint = type { i32*, i32* }

@RENDEZVOUS_ATTACH = common dso_local global i32 0, align 4
@RENDEZVOUS_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rendezvous_entry*, %struct.rendezvous_endpoint*)* @rendezvous_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rendezvous_attach(%struct.rendezvous_entry* %0, %struct.rendezvous_endpoint* %1) #0 {
  %3 = alloca %struct.rendezvous_entry*, align 8
  %4 = alloca %struct.rendezvous_endpoint*, align 8
  %5 = alloca i32, align 4
  store %struct.rendezvous_entry* %0, %struct.rendezvous_entry** %3, align 8
  store %struct.rendezvous_endpoint* %1, %struct.rendezvous_endpoint** %4, align 8
  %6 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %7 = getelementptr inbounds %struct.rendezvous_entry, %struct.rendezvous_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (i32, %struct.rendezvous_entry.0*)*, i32 (i32, %struct.rendezvous_entry.0*)** %8, align 8
  %10 = load i32, i32* @RENDEZVOUS_ATTACH, align 4
  %11 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %12 = bitcast %struct.rendezvous_entry* %11 to %struct.rendezvous_entry.0*
  %13 = call i32 %9(i32 %10, %struct.rendezvous_entry.0* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %18 = getelementptr inbounds %struct.rendezvous_entry, %struct.rendezvous_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.rendezvous_entry.1*)*, i32 (i32, %struct.rendezvous_entry.1*)** %19, align 8
  %21 = load i32, i32* @RENDEZVOUS_ATTACH, align 4
  %22 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %23 = bitcast %struct.rendezvous_entry* %22 to %struct.rendezvous_entry.1*
  %24 = call i32 %20(i32 %21, %struct.rendezvous_entry.1* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %29 = getelementptr inbounds %struct.rendezvous_entry, %struct.rendezvous_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.rendezvous_entry.0*)*, i32 (i32, %struct.rendezvous_entry.0*)** %30, align 8
  %32 = load i32, i32* @RENDEZVOUS_DETACH, align 4
  %33 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %3, align 8
  %34 = bitcast %struct.rendezvous_entry* %33 to %struct.rendezvous_entry.0*
  %35 = call i32 %31(i32 %32, %struct.rendezvous_entry.0* %34)
  %36 = load %struct.rendezvous_endpoint*, %struct.rendezvous_endpoint** %4, align 8
  %37 = getelementptr inbounds %struct.rendezvous_endpoint, %struct.rendezvous_endpoint* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.rendezvous_endpoint*, %struct.rendezvous_endpoint** %4, align 8
  %39 = getelementptr inbounds %struct.rendezvous_endpoint, %struct.rendezvous_endpoint* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %27, %16
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
