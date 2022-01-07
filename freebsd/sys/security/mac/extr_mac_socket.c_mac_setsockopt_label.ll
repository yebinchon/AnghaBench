; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_setsockopt_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_setsockopt_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { i32 }
%struct.mac = type { i32, i32 }
%struct.label = type { i32 }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_SOCKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_MACTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_setsockopt_label(%struct.ucred* %0, %struct.socket* %1, %struct.mac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.mac*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.mac* %2, %struct.mac** %7, align 8
  %11 = load i32, i32* @mac_labeled, align 4
  %12 = load i32, i32* @MPC_OBJECT_SOCKET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.mac*, %struct.mac** %7, align 8
  %19 = call i32 @mac_check_structmac_consistent(%struct.mac* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load %struct.mac*, %struct.mac** %7, align 8
  %26 = getelementptr inbounds %struct.mac, %struct.mac* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @M_MACTEMP, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i8* @malloc(i32 %27, i32 %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.mac*, %struct.mac** %7, align 8
  %32 = getelementptr inbounds %struct.mac, %struct.mac* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.mac*, %struct.mac** %7, align 8
  %36 = getelementptr inbounds %struct.mac, %struct.mac* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @copyinstr(i32 %33, i8* %34, i32 %37, i32* null)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @M_MACTEMP, align 4
  %44 = call i32 @free(i8* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %67

46:                                               ; preds = %24
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = call %struct.label* @mac_socket_label_alloc(i32 %47)
  store %struct.label* %48, %struct.label** %8, align 8
  %49 = load %struct.label*, %struct.label** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @mac_socket_internalize_label(%struct.label* %49, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @M_MACTEMP, align 4
  %54 = call i32 @free(i8* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %63

58:                                               ; preds = %46
  %59 = load %struct.ucred*, %struct.ucred** %5, align 8
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = load %struct.label*, %struct.label** %8, align 8
  %62 = call i32 @mac_socket_label_set(%struct.ucred* %59, %struct.socket* %60, %struct.label* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = load %struct.label*, %struct.label** %8, align 8
  %65 = call i32 @mac_socket_label_free(%struct.label* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %41, %22, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @mac_check_structmac_consistent(%struct.mac*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.label* @mac_socket_label_alloc(i32) #1

declare dso_local i32 @mac_socket_internalize_label(%struct.label*, i8*) #1

declare dso_local i32 @mac_socket_label_set(%struct.ucred*, %struct.socket*, %struct.label*) #1

declare dso_local i32 @mac_socket_label_free(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
