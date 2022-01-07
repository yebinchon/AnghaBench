; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_port_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i64, %struct.portal_group*, %struct.target* }
%struct.portal_group = type { i32 }
%struct.target = type { i32 }
%struct.ctl_port_entry = type { i64, i64, i8*, i8*, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.ctl_lun_map = type { i64, i64, i8*, i8*, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.ctl_req = type { i64, i64, i8*, i8*, i32, i32*, i32*, i32, i32, i32, i32 }

@ctl_fd = common dso_local global i32 0, align 4
@CTL_DISABLE_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CTL_DISABLE_PORT ioctl failed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@CTL_REQ_REMOVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"nvlist_create\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"port_id\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cfiscsi_target\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"cfiscsi_portal_group_tag\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"error packing nvlist\00", align 1
@CTL_PORT_REQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"error issuing CTL_PORT_REQ ioctl\00", align 1
@CTL_LUN_ERROR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"error returned from port removal request: %s\00", align 1
@CTL_LUN_OK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"unknown port removal request status %d\00", align 1
@UINT32_MAX = common dso_local global i8* null, align 8
@CTL_LUN_MAP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"CTL_LUN_MAP ioctl failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_port_remove(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.ctl_port_entry, align 8
  %5 = alloca %struct.ctl_lun_map, align 8
  %6 = alloca %struct.ctl_req, align 8
  %7 = alloca %struct.target*, align 8
  %8 = alloca %struct.portal_group*, align 8
  %9 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  %10 = load %struct.port*, %struct.port** %3, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 3
  %12 = load %struct.target*, %struct.target** %11, align 8
  store %struct.target* %12, %struct.target** %7, align 8
  %13 = load %struct.port*, %struct.port** %3, align 8
  %14 = getelementptr inbounds %struct.port, %struct.port* %13, i32 0, i32 2
  %15 = load %struct.portal_group*, %struct.portal_group** %14, align 8
  store %struct.portal_group* %15, %struct.portal_group** %8, align 8
  %16 = bitcast %struct.ctl_port_entry* %4 to %struct.ctl_req*
  %17 = call i32 @bzero(%struct.ctl_req* %16, i32 72)
  %18 = load %struct.port*, %struct.port** %3, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ctl_port_entry, %struct.ctl_port_entry* %4, i32 0, i32 10
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ctl_fd, align 4
  %23 = load i32, i32* @CTL_DISABLE_PORT, align 4
  %24 = bitcast %struct.ctl_port_entry* %4 to %struct.ctl_req*
  %25 = call i32 @ioctl(i32 %22, i32 %23, %struct.ctl_req* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @log_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %145

30:                                               ; preds = %1
  %31 = load %struct.port*, %struct.port** %3, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 2
  %33 = load %struct.portal_group*, %struct.portal_group** %32, align 8
  %34 = icmp ne %struct.portal_group* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.port*, %struct.port** %3, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %126

40:                                               ; preds = %35, %30
  %41 = call i32 @bzero(%struct.ctl_req* %6, i32 72)
  %42 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.port*, %struct.port** %3, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @strlcpy(i32 %43, i8* %49, i32 4)
  %51 = load i32, i32* @CTL_REQ_REMOVE, align 4
  %52 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = call i32* @nvlist_create(i32 0)
  %54 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  store i32* %53, i32** %54, align 8
  %55 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %40
  %61 = load %struct.port*, %struct.port** %3, align 8
  %62 = getelementptr inbounds %struct.port, %struct.port* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.port*, %struct.port** %3, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @nvlist_add_stringf(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %85

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.target*, %struct.target** %7, align 8
  %76 = getelementptr inbounds %struct.target, %struct.target* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvlist_add_string(i32* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.portal_group*, %struct.portal_group** %8, align 8
  %82 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @nvlist_add_stringf(i32* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %72, %65
  %86 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 7
  %89 = call i32* @nvlist_pack(i32* %87, i32* %88)
  %90 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 6
  store i32* %89, i32** %90, align 8
  %91 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = call i32 @log_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %145

96:                                               ; preds = %85
  %97 = load i32, i32* @ctl_fd, align 4
  %98 = load i32, i32* @CTL_PORT_REQ, align 4
  %99 = call i32 @ioctl(i32 %97, i32 %98, %struct.ctl_req* %6)
  store i32 %99, i32* %9, align 4
  %100 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @nvlist_destroy(i32* %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = call i32 @log_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %145

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CTL_LUN_ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @log_warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 %114)
  store i32 1, i32* %2, align 4
  br label %145

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CTL_LUN_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %6, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @log_warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 %123)
  store i32 1, i32* %2, align 4
  br label %145

125:                                              ; preds = %116
  br label %144

126:                                              ; preds = %35
  %127 = load %struct.port*, %struct.port** %3, align 8
  %128 = getelementptr inbounds %struct.port, %struct.port* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 4
  store i32 %129, i32* %130, align 8
  %131 = load i8*, i8** @UINT32_MAX, align 8
  %132 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 3
  store i8* %131, i8** %132, align 8
  %133 = load i8*, i8** @UINT32_MAX, align 8
  %134 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 2
  store i8* %133, i8** %134, align 8
  %135 = load i32, i32* @ctl_fd, align 4
  %136 = load i32, i32* @CTL_LUN_MAP, align 4
  %137 = bitcast %struct.ctl_lun_map* %5 to %struct.ctl_req*
  %138 = call i32 @ioctl(i32 %135, i32 %136, %struct.ctl_req* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = call i32 @log_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %126
  br label %144

144:                                              ; preds = %143, %125
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %121, %112, %105, %94, %28
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @bzero(%struct.ctl_req*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_req*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @nvlist_add_stringf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i32) #1

declare dso_local i32* @nvlist_pack(i32*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @log_warnx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
