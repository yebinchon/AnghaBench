; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_ipc_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_ipc_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_perm = type { i32, i32, i32, i32, i32, i32, i32 }

@AUT_IPC_PERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_ipc_perm(%struct.ipc_perm* %0) #0 {
  %2 = alloca %struct.ipc_perm*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ipc_perm* %0, %struct.ipc_perm** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @GET_TOKEN_AREA(i32* %6, i32* %7, i32 56)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @AUT_IPC_PERM, align 4
  %11 = call i32 @ADD_U_CHAR(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %14 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ADD_U_INT32(i32* %12, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %19 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ADD_U_INT32(i32* %17, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %24 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ADD_U_INT32(i32* %22, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %29 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ADD_U_INT32(i32* %27, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ADD_U_INT16(i32* %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %37 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ADD_U_INT16(i32* %35, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ADD_U_INT16(i32* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %45 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ADD_U_INT16(i32* %43, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.ipc_perm*, %struct.ipc_perm** %2, align 8
  %50 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ADD_U_INT32(i32* %48, i32 %51)
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
