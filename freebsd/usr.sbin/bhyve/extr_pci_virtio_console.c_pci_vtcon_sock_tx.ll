; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_sock_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_sock_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtcon_port = type { i32 }
%struct.iovec = type { i32, i32 }
%struct.pci_vtcon_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtcon_port*, i8*, %struct.iovec*, i32)* @pci_vtcon_sock_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtcon_sock_tx(%struct.pci_vtcon_port* %0, i8* %1, %struct.iovec* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_vtcon_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_vtcon_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_vtcon_port* %0, %struct.pci_vtcon_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.pci_vtcon_sock*
  store %struct.pci_vtcon_sock* %13, %struct.pci_vtcon_sock** %9, align 8
  %14 = load %struct.pci_vtcon_sock*, %struct.pci_vtcon_sock** %9, align 8
  %15 = getelementptr inbounds %struct.pci_vtcon_sock, %struct.pci_vtcon_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %60

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.pci_vtcon_sock*, %struct.pci_vtcon_sock** %9, align 8
  %26 = getelementptr inbounds %struct.pci_vtcon_sock, %struct.pci_vtcon_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iovec*, %struct.iovec** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %30
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iovec*, %struct.iovec** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @stream_write(i32 %27, i32 %33, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %48

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %20

48:                                               ; preds = %43, %20
  %49 = load i32, i32* %11, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.pci_vtcon_sock*, %struct.pci_vtcon_sock** %9, align 8
  %53 = getelementptr inbounds %struct.pci_vtcon_sock, %struct.pci_vtcon_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mevent_delete_close(i32 %54)
  %56 = load %struct.pci_vtcon_sock*, %struct.pci_vtcon_sock** %9, align 8
  %57 = getelementptr inbounds %struct.pci_vtcon_sock, %struct.pci_vtcon_sock* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 4
  %58 = load %struct.pci_vtcon_sock*, %struct.pci_vtcon_sock** %9, align 8
  %59 = getelementptr inbounds %struct.pci_vtcon_sock, %struct.pci_vtcon_sock* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %18, %51, %48
  ret void
}

declare dso_local i32 @stream_write(i32, i32, i32) #1

declare dso_local i32 @mevent_delete_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
