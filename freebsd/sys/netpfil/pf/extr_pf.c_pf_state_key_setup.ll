; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_key_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_key = type { i32, i32, i8**, i32* }
%struct.pf_pdesc = type { i64, i64, i32, i32 }
%struct.pf_addr = type { i32 }

@V_pf_state_key_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_state_key* @pf_state_key_setup(%struct.pf_pdesc* %0, %struct.pf_addr* %1, %struct.pf_addr* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.pf_state_key*, align 8
  %7 = alloca %struct.pf_pdesc*, align 8
  %8 = alloca %struct.pf_addr*, align 8
  %9 = alloca %struct.pf_addr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_pdesc* %0, %struct.pf_pdesc** %7, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %8, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @V_pf_state_key_z, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %struct.pf_state_key* @uma_zalloc(i32 %13, i32 %14)
  store %struct.pf_state_key* %15, %struct.pf_state_key** %12, align 8
  %16 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %17 = icmp eq %struct.pf_state_key* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.pf_state_key* null, %struct.pf_state_key** %6, align 8
  br label %71

19:                                               ; preds = %5
  %20 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %21 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %24 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %28 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %29 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PF_ACPY(i32* %26, %struct.pf_addr* %27, i32 %30)
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %33 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %36 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load %struct.pf_addr*, %struct.pf_addr** %9, align 8
  %40 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %41 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PF_ACPY(i32* %38, %struct.pf_addr* %39, i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %46 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %49 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  store i8* %44, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %54 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %57 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  store i8* %52, i8** %59, align 8
  %60 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %61 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %64 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %66 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  %69 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pf_state_key*, %struct.pf_state_key** %12, align 8
  store %struct.pf_state_key* %70, %struct.pf_state_key** %6, align 8
  br label %71

71:                                               ; preds = %19, %18
  %72 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  ret %struct.pf_state_key* %72
}

declare dso_local %struct.pf_state_key* @uma_zalloc(i32, i32) #1

declare dso_local i32 @PF_ACPY(i32*, %struct.pf_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
