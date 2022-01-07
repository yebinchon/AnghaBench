; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_getsockopt_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_getsockopt_label.c"
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
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_getsockopt_label(%struct.ucred* %0, %struct.socket* %1, %struct.mac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.mac*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.mac* %2, %struct.mac** %7, align 8
  %12 = load i32, i32* @mac_labeled, align 4
  %13 = load i32, i32* @MPC_OBJECT_SOCKET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %95

18:                                               ; preds = %3
  %19 = load %struct.mac*, %struct.mac** %7, align 8
  %20 = call i32 @mac_check_structmac_consistent(%struct.mac* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %95

25:                                               ; preds = %18
  %26 = load %struct.mac*, %struct.mac** %7, align 8
  %27 = getelementptr inbounds %struct.mac, %struct.mac* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @M_MACTEMP, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call i8* @malloc(i32 %28, i32 %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.mac*, %struct.mac** %7, align 8
  %33 = getelementptr inbounds %struct.mac, %struct.mac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.mac*, %struct.mac** %7, align 8
  %37 = getelementptr inbounds %struct.mac, %struct.mac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @copyinstr(i32 %34, i8* %35, i32 %38, i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @M_MACTEMP, align 4
  %45 = call i32 @free(i8* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %95

47:                                               ; preds = %25
  %48 = load %struct.mac*, %struct.mac** %7, align 8
  %49 = getelementptr inbounds %struct.mac, %struct.mac* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @M_MACTEMP, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = load i32, i32* @M_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @malloc(i32 %50, i32 %51, i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call %struct.label* @mac_socket_label_alloc(i32 %56)
  store %struct.label* %57, %struct.label** %10, align 8
  %58 = load %struct.socket*, %struct.socket** %6, align 8
  %59 = call i32 @SOCK_LOCK(%struct.socket* %58)
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.label*, %struct.label** %10, align 8
  %64 = call i32 @mac_socket_copy_label(i32 %62, %struct.label* %63)
  %65 = load %struct.socket*, %struct.socket** %6, align 8
  %66 = call i32 @SOCK_UNLOCK(%struct.socket* %65)
  %67 = load %struct.label*, %struct.label** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.mac*, %struct.mac** %7, align 8
  %71 = getelementptr inbounds %struct.mac, %struct.mac* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mac_socket_externalize_label(%struct.label* %67, i8* %68, i8* %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.label*, %struct.label** %10, align 8
  %75 = call i32 @mac_socket_label_free(%struct.label* %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %47
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.mac*, %struct.mac** %7, align 8
  %81 = getelementptr inbounds %struct.mac, %struct.mac* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = add nsw i64 %84, 1
  %86 = call i32 @copyout(i8* %79, i32 %82, i64 %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %78, %47
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* @M_MACTEMP, align 4
  %90 = call i32 @free(i8* %88, i32 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* @M_MACTEMP, align 4
  %93 = call i32 @free(i8* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %42, %23, %16
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @mac_check_structmac_consistent(%struct.mac*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.label* @mac_socket_label_alloc(i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @mac_socket_copy_label(i32, %struct.label*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @mac_socket_externalize_label(%struct.label*, i8*, i8*, i32) #1

declare dso_local i32 @mac_socket_label_free(%struct.label*) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
