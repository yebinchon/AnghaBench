; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_mod_chash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_prepare_mod_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_item = type { i32, i32, %struct.chashbhead*, %struct.chashbhead* }
%struct.chashbhead = type { i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @ta_prepare_mod_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_prepare_mod_chash(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mod_item*, align 8
  %6 = alloca %struct.chashbhead*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mod_item*
  store %struct.mod_item* %9, %struct.mod_item** %5, align 8
  %10 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %11 = call i32 @memset(%struct.mod_item* %10, i32 0, i32 24)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 65535
  %16 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %17 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 65535
  %21 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %22 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %24 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %2
  %28 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %29 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @M_IPFW, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.chashbhead* @malloc(i32 %33, i32 %34, i32 %37)
  store %struct.chashbhead* %38, %struct.chashbhead** %6, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %27
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %42 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.chashbhead*, %struct.chashbhead** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.chashbhead, %struct.chashbhead* %46, i64 %48
  %50 = call i32 @SLIST_INIT(%struct.chashbhead* %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.chashbhead*, %struct.chashbhead** %6, align 8
  %56 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %57 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %56, i32 0, i32 3
  store %struct.chashbhead* %55, %struct.chashbhead** %57, align 8
  br label %58

58:                                               ; preds = %54, %2
  %59 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %60 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %65 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @M_IPFW, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.chashbhead* @malloc(i32 %69, i32 %70, i32 %73)
  store %struct.chashbhead* %74, %struct.chashbhead** %6, align 8
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %87, %63
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %78 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.chashbhead*, %struct.chashbhead** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.chashbhead, %struct.chashbhead* %82, i64 %84
  %86 = call i32 @SLIST_INIT(%struct.chashbhead* %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.chashbhead*, %struct.chashbhead** %6, align 8
  %92 = load %struct.mod_item*, %struct.mod_item** %5, align 8
  %93 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %92, i32 0, i32 2
  store %struct.chashbhead* %91, %struct.chashbhead** %93, align 8
  br label %94

94:                                               ; preds = %90, %58
  ret i32 0
}

declare dso_local i32 @memset(%struct.mod_item*, i32, i32) #1

declare dso_local %struct.chashbhead* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.chashbhead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
