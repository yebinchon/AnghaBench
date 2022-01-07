; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_insert_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_insert_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_ports = type { i32 }
%struct.bridge_port = type { i64, i64 }

@b_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_ports*, %struct.bridge_port*, %struct.bridge_port**)* @bridge_port_insert_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_port_insert_at(%struct.bridge_ports* %0, %struct.bridge_port* %1, %struct.bridge_port** %2) #0 {
  %4 = alloca %struct.bridge_ports*, align 8
  %5 = alloca %struct.bridge_port*, align 8
  %6 = alloca %struct.bridge_port**, align 8
  %7 = alloca %struct.bridge_port*, align 8
  store %struct.bridge_ports* %0, %struct.bridge_ports** %4, align 8
  store %struct.bridge_port* %1, %struct.bridge_port** %5, align 8
  store %struct.bridge_port** %2, %struct.bridge_port*** %6, align 8
  %8 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  %9 = icmp ne %struct.bridge_port** %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  %13 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  store %struct.bridge_port* %13, %struct.bridge_port** %7, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %16 = icmp ne %struct.bridge_port* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %22 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %53

27:                                               ; preds = %25
  %28 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %29 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %32 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %37 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %38 = load i32, i32* @b_p, align 4
  %39 = call i32 @TAILQ_INSERT_BEFORE(%struct.bridge_port* %36, %struct.bridge_port* %37, i32 %38)
  %40 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  %41 = load %struct.bridge_port*, %struct.bridge_port** %40, align 8
  %42 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %43 = icmp eq %struct.bridge_port* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %46 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  store %struct.bridge_port* %45, %struct.bridge_port** %46, align 8
  br label %47

47:                                               ; preds = %44, %35
  br label %66

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %51 = load i32, i32* @b_p, align 4
  %52 = call %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port* %50, i32 %51)
  store %struct.bridge_port* %52, %struct.bridge_port** %7, align 8
  br label %14

53:                                               ; preds = %25
  %54 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %55 = icmp eq %struct.bridge_port* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.bridge_ports*, %struct.bridge_ports** %4, align 8
  %58 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %59 = load i32, i32* @b_p, align 4
  %60 = call i32 @TAILQ_INSERT_TAIL(%struct.bridge_ports* %57, %struct.bridge_port* %58, i32 %59)
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %63 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %64 = load i32, i32* @b_p, align 4
  %65 = call i32 @TAILQ_INSERT_BEFORE(%struct.bridge_port* %62, %struct.bridge_port* %63, i32 %64)
  br label %66

66:                                               ; preds = %47, %61, %56
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.bridge_port*, %struct.bridge_port*, i32) #1

declare dso_local %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.bridge_ports*, %struct.bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
