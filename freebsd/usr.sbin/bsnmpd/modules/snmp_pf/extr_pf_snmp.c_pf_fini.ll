; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pf_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pf_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_entry = type opaque
%struct.pfq_entry = type opaque
%struct.pft_entry = type { i32 }
%struct.pfa_entry = type opaque
%struct.pfl_entry = type opaque

@pfi_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@pfq_table = common dso_local global i32 0, align 4
@pft_table = common dso_local global i32 0, align 4
@pfa_table = common dso_local global i32 0, align 4
@pfl_table = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pf_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_fini() #0 {
  %1 = alloca %struct.pfi_entry*, align 8
  %2 = alloca %struct.pfi_entry*, align 8
  %3 = alloca %struct.pfq_entry*, align 8
  %4 = alloca %struct.pfq_entry*, align 8
  %5 = alloca %struct.pft_entry*, align 8
  %6 = alloca %struct.pft_entry*, align 8
  %7 = alloca %struct.pfa_entry*, align 8
  %8 = alloca %struct.pfa_entry*, align 8
  %9 = alloca %struct.pfl_entry*, align 8
  %10 = alloca %struct.pfl_entry*, align 8
  %11 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pfi_table)
  %12 = bitcast %struct.pft_entry* %11 to %struct.pfi_entry*
  store %struct.pfi_entry* %12, %struct.pfi_entry** %1, align 8
  br label %13

13:                                               ; preds = %16, %0
  %14 = load %struct.pfi_entry*, %struct.pfi_entry** %1, align 8
  %15 = icmp ne %struct.pfi_entry* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.pfi_entry*, %struct.pfi_entry** %1, align 8
  %18 = bitcast %struct.pfi_entry* %17 to %struct.pft_entry*
  %19 = load i32, i32* @link, align 4
  %20 = call %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry* %18, i32 %19)
  %21 = bitcast %struct.pft_entry* %20 to %struct.pfi_entry*
  store %struct.pfi_entry* %21, %struct.pfi_entry** %2, align 8
  %22 = load %struct.pfi_entry*, %struct.pfi_entry** %1, align 8
  %23 = bitcast %struct.pfi_entry* %22 to %struct.pft_entry*
  %24 = call i32 @free(%struct.pft_entry* %23)
  %25 = load %struct.pfi_entry*, %struct.pfi_entry** %2, align 8
  store %struct.pfi_entry* %25, %struct.pfi_entry** %1, align 8
  br label %13

26:                                               ; preds = %13
  %27 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pfq_table)
  %28 = bitcast %struct.pft_entry* %27 to %struct.pfq_entry*
  store %struct.pfq_entry* %28, %struct.pfq_entry** %3, align 8
  br label %29

29:                                               ; preds = %32, %26
  %30 = load %struct.pfq_entry*, %struct.pfq_entry** %3, align 8
  %31 = icmp ne %struct.pfq_entry* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.pfq_entry*, %struct.pfq_entry** %3, align 8
  %34 = bitcast %struct.pfq_entry* %33 to %struct.pft_entry*
  %35 = load i32, i32* @link, align 4
  %36 = call %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry* %34, i32 %35)
  %37 = bitcast %struct.pft_entry* %36 to %struct.pfq_entry*
  store %struct.pfq_entry* %37, %struct.pfq_entry** %4, align 8
  %38 = load %struct.pfq_entry*, %struct.pfq_entry** %3, align 8
  %39 = bitcast %struct.pfq_entry* %38 to %struct.pft_entry*
  %40 = call i32 @free(%struct.pft_entry* %39)
  %41 = load %struct.pfq_entry*, %struct.pfq_entry** %4, align 8
  store %struct.pfq_entry* %41, %struct.pfq_entry** %3, align 8
  br label %29

42:                                               ; preds = %29
  %43 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pft_table)
  store %struct.pft_entry* %43, %struct.pft_entry** %5, align 8
  br label %44

44:                                               ; preds = %47, %42
  %45 = load %struct.pft_entry*, %struct.pft_entry** %5, align 8
  %46 = icmp ne %struct.pft_entry* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.pft_entry*, %struct.pft_entry** %5, align 8
  %49 = load i32, i32* @link, align 4
  %50 = call %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry* %48, i32 %49)
  store %struct.pft_entry* %50, %struct.pft_entry** %6, align 8
  %51 = load %struct.pft_entry*, %struct.pft_entry** %5, align 8
  %52 = call i32 @free(%struct.pft_entry* %51)
  %53 = load %struct.pft_entry*, %struct.pft_entry** %6, align 8
  store %struct.pft_entry* %53, %struct.pft_entry** %5, align 8
  br label %44

54:                                               ; preds = %44
  %55 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pfa_table)
  %56 = bitcast %struct.pft_entry* %55 to %struct.pfa_entry*
  store %struct.pfa_entry* %56, %struct.pfa_entry** %7, align 8
  br label %57

57:                                               ; preds = %60, %54
  %58 = load %struct.pfa_entry*, %struct.pfa_entry** %7, align 8
  %59 = icmp ne %struct.pfa_entry* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.pfa_entry*, %struct.pfa_entry** %7, align 8
  %62 = bitcast %struct.pfa_entry* %61 to %struct.pft_entry*
  %63 = load i32, i32* @link, align 4
  %64 = call %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry* %62, i32 %63)
  %65 = bitcast %struct.pft_entry* %64 to %struct.pfa_entry*
  store %struct.pfa_entry* %65, %struct.pfa_entry** %8, align 8
  %66 = load %struct.pfa_entry*, %struct.pfa_entry** %7, align 8
  %67 = bitcast %struct.pfa_entry* %66 to %struct.pft_entry*
  %68 = call i32 @free(%struct.pft_entry* %67)
  %69 = load %struct.pfa_entry*, %struct.pfa_entry** %8, align 8
  store %struct.pfa_entry* %69, %struct.pfa_entry** %7, align 8
  br label %57

70:                                               ; preds = %57
  %71 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pfl_table)
  %72 = bitcast %struct.pft_entry* %71 to %struct.pfl_entry*
  store %struct.pfl_entry* %72, %struct.pfl_entry** %9, align 8
  br label %73

73:                                               ; preds = %76, %70
  %74 = load %struct.pfl_entry*, %struct.pfl_entry** %9, align 8
  %75 = icmp ne %struct.pfl_entry* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.pfl_entry*, %struct.pfl_entry** %9, align 8
  %78 = bitcast %struct.pfl_entry* %77 to %struct.pft_entry*
  %79 = load i32, i32* @link, align 4
  %80 = call %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry* %78, i32 %79)
  %81 = bitcast %struct.pft_entry* %80 to %struct.pfl_entry*
  store %struct.pfl_entry* %81, %struct.pfl_entry** %10, align 8
  %82 = load %struct.pfl_entry*, %struct.pfl_entry** %9, align 8
  %83 = bitcast %struct.pfl_entry* %82 to %struct.pft_entry*
  %84 = call i32 @free(%struct.pft_entry* %83)
  %85 = load %struct.pfl_entry*, %struct.pfl_entry** %10, align 8
  store %struct.pfl_entry* %85, %struct.pfl_entry** %9, align 8
  br label %73

86:                                               ; preds = %73
  %87 = load i32, i32* @dev, align 4
  %88 = call i32 @close(i32 %87)
  ret i32 0
}

declare dso_local %struct.pft_entry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pft_entry* @TAILQ_NEXT(%struct.pft_entry*, i32) #1

declare dso_local i32 @free(%struct.pft_entry*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
