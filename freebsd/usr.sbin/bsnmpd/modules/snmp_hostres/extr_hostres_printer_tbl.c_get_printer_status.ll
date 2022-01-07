; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_get_printer_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_get_printer_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8*, i8*, i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@LOCK_SH = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@PS_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot open status file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"is ready and printing\00", align 1
@PS_PRINTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"to become ready (offline?)\00", align 1
@PS_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer*)* @get_printer_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_printer_status(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %2, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i32* null, i32** %8, align 8
  %17 = load i32, i32* @PS_UNKNOWN, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.printer*, %struct.printer** %2, align 8
  %19 = getelementptr inbounds %struct.printer, %struct.printer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.printer*, %struct.printer** %2, align 8
  %27 = getelementptr inbounds %struct.printer, %struct.printer* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = trunc i64 %15 to i32
  %30 = call i32 @strlcpy(i8* %16, i8* %28, i32 %29)
  br label %40

31:                                               ; preds = %1
  %32 = trunc i64 %15 to i32
  %33 = load %struct.printer*, %struct.printer** %2, align 8
  %34 = getelementptr inbounds %struct.printer, %struct.printer* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.printer*, %struct.printer** %2, align 8
  %37 = getelementptr inbounds %struct.printer, %struct.printer* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i8* %16, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38)
  br label %40

40:                                               ; preds = %31, %25
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* %16, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @LOCK_SH, align 4
  %48 = load i32, i32* @LOCK_NB, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @flock(i32 %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %40
  %53 = load i32, i32* @PS_IDLE, align 4
  store i32 %53, i32* %9, align 4
  br label %109

54:                                               ; preds = %45
  %55 = load %struct.printer*, %struct.printer** %2, align 8
  %56 = getelementptr inbounds %struct.printer, %struct.printer* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.printer*, %struct.printer** %2, align 8
  %64 = getelementptr inbounds %struct.printer, %struct.printer* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = trunc i64 %11 to i32
  %67 = call i32 @strlcpy(i8* %13, i8* %65, i32 %66)
  br label %77

68:                                               ; preds = %54
  %69 = trunc i64 %11 to i32
  %70 = load %struct.printer*, %struct.printer** %2, align 8
  %71 = getelementptr inbounds %struct.printer, %struct.printer* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.printer*, %struct.printer** %2, align 8
  %74 = getelementptr inbounds %struct.printer, %struct.printer* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @snprintf(i8* %13, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %72, i8* %75)
  br label %77

77:                                               ; preds = %68, %62
  %78 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @LOG_ERR, align 4
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 @syslog(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @PS_UNKNOWN, align 4
  store i32 %86, i32* %9, align 4
  br label %109

87:                                               ; preds = %77
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %89 = call i32 @memset(i8* %88, i8 signext 0, i32 128)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %91 = load i32*, i32** %8, align 8
  %92 = call i32* @fgets(i8* %90, i32 127, i32* %91)
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @PS_UNKNOWN, align 4
  store i32 %95, i32* %9, align 4
  br label %109

96:                                               ; preds = %87
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %98 = call i32* @strstr(i8* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @PS_PRINTING, align 4
  store i32 %101, i32* %9, align 4
  br label %109

102:                                              ; preds = %96
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %104 = call i32* @strstr(i8* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @PS_OTHER, align 4
  store i32 %107, i32* %9, align 4
  br label %109

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %106, %100, %94, %81, %52
  %110 = load i32, i32* %7, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @close(i32 %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32*, i32** %8, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %9, align 4
  %123 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %123)
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @flock(i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
