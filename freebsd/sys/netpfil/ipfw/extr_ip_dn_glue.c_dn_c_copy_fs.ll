; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_c_copy_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_c_copy_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fsk = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.copy_args = type { i32* }
%struct.dn_flow_set = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dn_flow_set* }

@DN_IS_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_c_copy_fs(%struct.dn_fsk* %0, %struct.copy_args* %1, i32 %2) #0 {
  %4 = alloca %struct.dn_fsk*, align 8
  %5 = alloca %struct.copy_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_flow_set*, align 8
  store %struct.dn_fsk* %0, %struct.dn_fsk** %4, align 8
  store %struct.copy_args* %1, %struct.copy_args** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %9 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.dn_flow_set*
  store %struct.dn_flow_set* %13, %struct.dn_flow_set** %7, align 8
  %14 = load i64, i64* @DN_IS_QUEUE, align 8
  %15 = inttoptr i64 %14 to %struct.dn_flow_set*
  %16 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %17 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.dn_flow_set* %15, %struct.dn_flow_set** %18, align 8
  %19 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %20 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %24 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %26 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %30 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %32 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %36 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %38 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %42 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %44 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %47 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %49 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %52 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %54 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %58 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %60 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %64 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %67 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %69 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %3
  %74 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %75 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  br label %79

78:                                               ; preds = %3
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i32 [ %77, %73 ], [ 1, %78 ]
  %81 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %82 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %84 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %88 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %90 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %96 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.dn_fsk*, %struct.dn_fsk** %4, align 8
  %98 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @convertflags2old(i32 %100)
  %102 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %103 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %105 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 64
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  ret i32 0
}

declare dso_local i32 @convertflags2old(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
