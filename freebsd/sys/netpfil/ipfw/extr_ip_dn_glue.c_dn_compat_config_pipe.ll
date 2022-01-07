; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_config_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_config_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dn_link = type { i32, i32, i32, i32 }
%struct.dn_fs = type { i32, i32, i32, i32, i64 }
%struct.dn_pipe7 = type { i32, i32, i32 }
%struct.dn_pipe8 = type { i32 }

@DN_MAX_ID = common dso_local global i32 0, align 4
@is7 = common dso_local global i32 0, align 4
@DN_HAVE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch*, %struct.dn_link*, %struct.dn_fs*, i8*)* @dn_compat_config_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_compat_config_pipe(%struct.dn_sch* %0, %struct.dn_link* %1, %struct.dn_fs* %2, i8* %3) #0 {
  %5 = alloca %struct.dn_sch*, align 8
  %6 = alloca %struct.dn_link*, align 8
  %7 = alloca %struct.dn_fs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dn_pipe7*, align 8
  %10 = alloca %struct.dn_pipe8*, align 8
  %11 = alloca i32, align 4
  store %struct.dn_sch* %0, %struct.dn_sch** %5, align 8
  store %struct.dn_link* %1, %struct.dn_link** %6, align 8
  store %struct.dn_fs* %2, %struct.dn_fs** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.dn_pipe7*
  store %struct.dn_pipe7* %13, %struct.dn_pipe7** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.dn_pipe8*
  store %struct.dn_pipe8* %15, %struct.dn_pipe8** %10, align 8
  %16 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %17 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.dn_sch*, %struct.dn_sch** %5, align 8
  %21 = getelementptr inbounds %struct.dn_sch, %struct.dn_sch* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dn_sch*, %struct.dn_sch** %5, align 8
  %23 = getelementptr inbounds %struct.dn_sch, %struct.dn_sch* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.dn_link*, %struct.dn_link** %6, align 8
  %27 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @DN_MAX_ID, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %28, %30
  %32 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %33 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @DN_MAX_ID, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %38 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %40 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dn_link*, %struct.dn_link** %6, align 8
  %43 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %45 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dn_link*, %struct.dn_link** %6, align 8
  %48 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @is7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %4
  %52 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %53 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dn_link*, %struct.dn_link** %6, align 8
  %56 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %4
  %58 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @dn_compat_config_queue(%struct.dn_fs* %58, i8* %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @DN_MAX_ID, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %66 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @DN_MAX_ID, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %71 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %73 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dn_sch*, %struct.dn_sch** %5, align 8
  %76 = getelementptr inbounds %struct.dn_sch, %struct.dn_sch* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %78 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %80 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DN_HAVE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %57
  %86 = load i32, i32* @DN_HAVE_MASK, align 4
  %87 = load %struct.dn_sch*, %struct.dn_sch** %5, align 8
  %88 = getelementptr inbounds %struct.dn_sch, %struct.dn_sch* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @DN_HAVE_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %94 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %98 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dn_sch*, %struct.dn_sch** %5, align 8
  %101 = getelementptr inbounds %struct.dn_sch, %struct.dn_sch* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dn_fs*, %struct.dn_fs** %7, align 8
  %103 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %102, i32 0, i32 3
  %104 = call i32 @bzero(i32* %103, i32 4)
  br label %105

105:                                              ; preds = %85, %57
  ret i32 0
}

declare dso_local i32 @dn_compat_config_queue(%struct.dn_fs*, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
