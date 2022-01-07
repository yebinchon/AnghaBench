; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_get_conf_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_get_conf_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifdrv = type { i32, i32, %struct.ifbrparam*, i32 }
%struct.ifbrparam = type { i32, i32, i32, i32, i32, i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@BRDGGPRI = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCGDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"update bridge: ioctl(BRDGGPRI) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@BRDGGMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"update bridge: ioctl(BRDGGMA) failed: %s\00", align 1
@BRDGGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"update bridge: ioctl(BRDGGHT) failed: %s\00", align 1
@BRDGGFD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"update bridge: ioctl(BRDGGFD) failed: %s\00", align 1
@BRDGGRTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"update bridge: ioctl(BRDGGRTE) failed: %s\00", align 1
@BRDGGTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"update bridge: ioctl(BRDGGTO) failed: %s\00", align 1
@BRDGGCACHE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"update bridge: ioctl(BRDGGCACHE) failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_if*)* @bridge_get_conf_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_get_conf_param(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca %struct.ifdrv, align 8
  %5 = alloca %struct.ifbrparam, align 4
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %6 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %9 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = call i32 @strlcpy(i32 %7, i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 0
  store i32 28, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 2
  store %struct.ifbrparam* %5, %struct.ifbrparam** %14, align 8
  %15 = load i32, i32* @BRDGGPRI, align 4
  %16 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @sock, align 4
  %18 = load i32, i32* @SIOCGDRVSPEC, align 4
  %19 = call i64 @ioctl(i32 %17, i32 %18, %struct.ifdrv* %4)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %130

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %30 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BRDGGMA, align 4
  %32 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @sock, align 4
  %34 = load i32, i32* @SIOCGDRVSPEC, align 4
  %35 = call i64 @ioctl(i32 %33, i32 %34, %struct.ifdrv* %4)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %2, align 4
  br label %130

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 100, %44
  %46 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %47 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @BRDGGHT, align 4
  %49 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @sock, align 4
  %51 = load i32, i32* @SIOCGDRVSPEC, align 4
  %52 = call i64 @ioctl(i32 %50, i32 %51, %struct.ifdrv* %4)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 @syslog(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %2, align 4
  br label %130

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 100, %61
  %63 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %64 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @BRDGGFD, align 4
  %66 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @sock, align 4
  %68 = load i32, i32* @SIOCGDRVSPEC, align 4
  %69 = call i64 @ioctl(i32 %67, i32 %68, %struct.ifdrv* %4)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load i32, i32* @LOG_ERR, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 @syslog(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %2, align 4
  br label %130

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 100, %78
  %80 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %81 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @BRDGGRTE, align 4
  %83 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @sock, align 4
  %85 = load i32, i32* @SIOCGDRVSPEC, align 4
  %86 = call i64 @ioctl(i32 %84, i32 %85, %struct.ifdrv* %4)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i32, i32* @LOG_ERR, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 @syslog(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %2, align 4
  br label %130

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %97 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @BRDGGTO, align 4
  %99 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @sock, align 4
  %101 = load i32, i32* @SIOCGDRVSPEC, align 4
  %102 = call i64 @ioctl(i32 %100, i32 %101, %struct.ifdrv* %4)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i32, i32* @LOG_ERR, align 4
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 @strerror(i32 %106)
  %108 = call i32 @syslog(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %2, align 4
  br label %130

109:                                              ; preds = %93
  %110 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %113 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @BRDGGCACHE, align 4
  %115 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %4, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @sock, align 4
  %117 = load i32, i32* @SIOCGDRVSPEC, align 4
  %118 = call i64 @ioctl(i32 %116, i32 %117, %struct.ifdrv* %4)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 @strerror(i32 %122)
  %124 = call i32 @syslog(i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  store i32 -1, i32* %2, align 4
  br label %130

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %5, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %129 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %120, %104, %88, %71, %54, %37, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
