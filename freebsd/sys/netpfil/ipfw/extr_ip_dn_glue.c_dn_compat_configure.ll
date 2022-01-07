; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_id = type { i32 }
%struct.dn_sch = type { i32 }
%struct.dn_link = type { i32 }
%struct.dn_fs = type { i32 }
%struct.dn_profile = type { i32 }
%struct.dn_pipe7 = type { i32 }
%struct.dn_pipe8 = type { i64 }

@M_DUMMYNET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DN_CMD_CONFIG = common dso_local global i32 0, align 4
@DN_API_VERSION = common dso_local global i32 0, align 4
@DN_SCH = common dso_local global i32 0, align 4
@DN_LINK = common dso_local global i32 0, align 4
@DN_FS = common dso_local global i32 0, align 4
@is7 = common dso_local global i32 0, align 4
@DN_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dn_compat_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_compat_configure(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dn_id*, align 8
  %5 = alloca %struct.dn_id*, align 8
  %6 = alloca %struct.dn_sch*, align 8
  %7 = alloca %struct.dn_link*, align 8
  %8 = alloca %struct.dn_fs*, align 8
  %9 = alloca %struct.dn_profile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dn_pipe7*, align 8
  %13 = alloca %struct.dn_pipe8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.dn_id* null, %struct.dn_id** %4, align 8
  store %struct.dn_sch* null, %struct.dn_sch** %6, align 8
  store %struct.dn_link* null, %struct.dn_link** %7, align 8
  store %struct.dn_fs* null, %struct.dn_fs** %8, align 8
  store %struct.dn_profile* null, %struct.dn_profile** %9, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.dn_pipe7*
  store %struct.dn_pipe7* %16, %struct.dn_pipe7** %12, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.dn_pipe8*
  store %struct.dn_pipe8* %18, %struct.dn_pipe8** %13, align 8
  store i32 4, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @M_DUMMYNET, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.dn_id* @malloc(i32 %23, i32 %24, i32 %27)
  store %struct.dn_id* %28, %struct.dn_id** %4, align 8
  store %struct.dn_id* %28, %struct.dn_id** %5, align 8
  %29 = load i32, i32* @DN_CMD_CONFIG, align 4
  %30 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %29)
  %31 = load i32, i32* @DN_API_VERSION, align 4
  %32 = load %struct.dn_id*, %struct.dn_id** %5, align 8
  %33 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dn_pipe7*, %struct.dn_pipe7** %12, align 8
  %35 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %1
  %40 = load i32, i32* @DN_SCH, align 4
  %41 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %40)
  %42 = bitcast i8* %41 to %struct.dn_sch*
  store %struct.dn_sch* %42, %struct.dn_sch** %6, align 8
  %43 = load i32, i32* @DN_LINK, align 4
  %44 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %43)
  %45 = bitcast i8* %44 to %struct.dn_link*
  store %struct.dn_link* %45, %struct.dn_link** %7, align 8
  %46 = load i32, i32* @DN_FS, align 4
  %47 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %46)
  %48 = bitcast i8* %47 to %struct.dn_fs*
  store %struct.dn_fs* %48, %struct.dn_fs** %8, align 8
  %49 = load %struct.dn_sch*, %struct.dn_sch** %6, align 8
  %50 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %51 = load %struct.dn_fs*, %struct.dn_fs** %8, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @dn_compat_config_pipe(%struct.dn_sch* %49, %struct.dn_link* %50, %struct.dn_fs* %51, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %58 = load i32, i32* @M_DUMMYNET, align 4
  %59 = call i32 @free(%struct.dn_id* %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %2, align 4
  br label %120

61:                                               ; preds = %39
  %62 = load i32, i32* @is7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = load %struct.dn_pipe8*, %struct.dn_pipe8** %13, align 8
  %66 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i32, i32* @DN_PROFILE, align 4
  %71 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %70)
  %72 = bitcast i8* %71 to %struct.dn_profile*
  store %struct.dn_profile* %72, %struct.dn_profile** %9, align 8
  %73 = load %struct.dn_profile*, %struct.dn_profile** %9, align 8
  %74 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @dn_compat_config_profile(%struct.dn_profile* %73, %struct.dn_link* %74, i8* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %81 = load i32, i32* @M_DUMMYNET, align 4
  %82 = call i32 @free(%struct.dn_id* %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %120

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %64, %61
  br label %101

86:                                               ; preds = %1
  %87 = load i32, i32* @DN_FS, align 4
  %88 = call i8* @o_next(%struct.dn_id** %4, i32 4, i32 %87)
  %89 = bitcast i8* %88 to %struct.dn_fs*
  store %struct.dn_fs* %89, %struct.dn_fs** %8, align 8
  %90 = load %struct.dn_fs*, %struct.dn_fs** %8, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 @dn_compat_config_queue(%struct.dn_fs* %90, i8* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %97 = load i32, i32* @M_DUMMYNET, align 4
  %98 = call i32 @free(%struct.dn_id* %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %2, align 4
  br label %120

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.dn_id*, %struct.dn_id** %5, align 8
  %103 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %104 = bitcast %struct.dn_id* %103 to i8*
  %105 = load %struct.dn_id*, %struct.dn_id** %5, align 8
  %106 = bitcast %struct.dn_id* %105 to i8*
  %107 = ptrtoint i8* %104 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @do_config(%struct.dn_id* %102, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %113 = icmp ne %struct.dn_id* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %116 = load i32, i32* @M_DUMMYNET, align 4
  %117 = call i32 @free(%struct.dn_id* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %101
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %95, %79, %56
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.dn_id* @malloc(i32, i32, i32) #1

declare dso_local i8* @o_next(%struct.dn_id**, i32, i32) #1

declare dso_local i32 @dn_compat_config_pipe(%struct.dn_sch*, %struct.dn_link*, %struct.dn_fs*, i8*) #1

declare dso_local i32 @free(%struct.dn_id*, i32) #1

declare dso_local i32 @dn_compat_config_profile(%struct.dn_profile*, %struct.dn_link*, i8*) #1

declare dso_local i32 @dn_compat_config_queue(%struct.dn_fs*, i8*) #1

declare dso_local i32 @do_config(%struct.dn_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
