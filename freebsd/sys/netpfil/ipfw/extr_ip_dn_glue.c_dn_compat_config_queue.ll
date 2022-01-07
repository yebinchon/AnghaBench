; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_config_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_config_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fs = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.dn_pipe7 = type { %struct.dn_flow_set }
%struct.dn_flow_set = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_pipe8 = type { %struct.dn_flow_set }

@is7 = common dso_local global i64 0, align 8
@DN_IS_GENTLE_RED = common dso_local global i32 0, align 4
@DN_IS_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fs*, i8*)* @dn_compat_config_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_compat_config_queue(%struct.dn_fs* %0, i8* %1) #0 {
  %3 = alloca %struct.dn_fs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dn_pipe7*, align 8
  %6 = alloca %struct.dn_pipe8*, align 8
  %7 = alloca %struct.dn_flow_set*, align 8
  store %struct.dn_fs* %0, %struct.dn_fs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dn_pipe7*
  store %struct.dn_pipe7* %9, %struct.dn_pipe7** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dn_pipe8*
  store %struct.dn_pipe8* %11, %struct.dn_pipe8** %6, align 8
  %12 = load i64, i64* @is7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.dn_pipe7*, %struct.dn_pipe7** %5, align 8
  %16 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %15, i32 0, i32 0
  store %struct.dn_flow_set* %16, %struct.dn_flow_set** %7, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.dn_pipe8*, %struct.dn_pipe8** %6, align 8
  %19 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %18, i32 0, i32 0
  store %struct.dn_flow_set* %19, %struct.dn_flow_set** %7, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %22 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %25 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %27 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %30 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %32 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %35 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %37 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %40 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %42 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %45 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %47 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %50 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %52 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %55 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %59 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @convertflags2new(i32 %60)
  %62 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %63 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %65 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %20
  %71 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %72 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DN_IS_RED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %70, %20
  %78 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %79 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %82 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %84 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %87 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %89 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %92 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.dn_flow_set*, %struct.dn_flow_set** %7, align 8
  %94 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dn_fs*, %struct.dn_fs** %3, align 8
  %97 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %77, %70
  ret i32 0
}

declare dso_local i32 @convertflags2new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
