; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_MessageIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_MessageIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etherdevice = type { i64, i32, i32 }
%struct.ng_mesg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.ngpppoe_sts = type { i8* }
%struct.timeval = type { i64, i64 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DoLoop: Cannot create fd_set\0A\00", align 1
@NG_VERSION = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%ld: Unexpected netgraph version, expected %ld\0A\00", align 1
@NGM_PPPOE_COOKIE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"%ld: Unexpected netgraph cookie, expected %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SET_FLAG\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"OFFER\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"GET_STATUS\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ACNAME\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"setenv: cannot set ACNAME=%s: %m\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SESSIONID\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"setenv: cannot set SESSIONID=%s: %m\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"Received NGM_PPPOE_%s (hook \22%.*s\22)\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Received NGM_PPPOE_%s\0A\00", align 1
@CARRIER_OK = common dso_local global i32 0, align 4
@CARRIER_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etherdevice*)* @ether_MessageIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether_MessageIn(%struct.etherdevice* %0) #0 {
  %2 = alloca %struct.etherdevice*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %struct.ng_mesg*, align 8
  %5 = alloca %struct.ngpppoe_sts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [14 x i8], align 1
  %8 = alloca [5 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.etherdevice* %0, %struct.etherdevice** %2, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %16 = bitcast i8* %15 to %struct.ng_mesg*
  store %struct.ng_mesg* %16, %struct.ng_mesg** %4, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 24
  %19 = bitcast i8* %18 to %struct.ngpppoe_sts*
  store %struct.ngpppoe_sts* %19, %struct.ngpppoe_sts** %5, align 8
  %20 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %21 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %188

25:                                               ; preds = %1
  %26 = call i32* (...) @mkfdset()
  store i32* %26, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @LogERROR, align 4
  %30 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %188

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %184
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @zerofdset(i32* %33)
  %35 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %36 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @FD_SET(i64 %37, i32* %38)
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %43 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @select(i64 %45, i32* %46, i32* null, i32* null, %struct.timeval* %10)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %185

51:                                               ; preds = %32
  %52 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %53 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %56 = call i64 @NgRecvMsg(i64 %54, %struct.ng_mesg* %55, i32 32, i32* null)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %185

59:                                               ; preds = %51
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %61 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NG_VERSION, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* @LogWARN, align 4
  %68 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %69 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NG_VERSION, align 8
  %73 = call i32 (i32, i8*, ...) @log_Printf(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %72)
  br label %185

74:                                               ; preds = %59
  %75 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %76 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NGM_PPPOE_COOKIE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* @LogWARN, align 4
  %83 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %84 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NGM_PPPOE_COOKIE, align 8
  %88 = call i32 (i32, i8*, ...) @log_Printf(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %86, i64 %87)
  br label %185

89:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %91 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %148 [
    i32 129, label %94
    i32 135, label %95
    i32 132, label %96
    i32 131, label %97
    i32 128, label %98
    i32 134, label %99
    i32 136, label %100
    i32 133, label %101
    i32 137, label %102
    i32 130, label %119
  ]

94:                                               ; preds = %89
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %156

95:                                               ; preds = %89
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %156

96:                                               ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %156

97:                                               ; preds = %89
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %156

98:                                               ; preds = %89
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %156

99:                                               ; preds = %89
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %156

100:                                              ; preds = %89
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %156

101:                                              ; preds = %89
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %156

102:                                              ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %103 = load %struct.ngpppoe_sts*, %struct.ngpppoe_sts** %5, align 8
  %104 = getelementptr inbounds %struct.ngpppoe_sts, %struct.ngpppoe_sts* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %105, i32 1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @LogWARN, align 4
  %110 = load %struct.ngpppoe_sts*, %struct.ngpppoe_sts** %5, align 8
  %111 = getelementptr inbounds %struct.ngpppoe_sts, %struct.ngpppoe_sts* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i32, i8*, ...) @log_Printf(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %116 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %13, align 4
  br label %156

119:                                              ; preds = %89
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  %120 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %121 = load %struct.ngpppoe_sts*, %struct.ngpppoe_sts** %5, align 8
  %122 = bitcast %struct.ngpppoe_sts* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @snprintf(i8* %120, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %126 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %125, i32 1)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load i32, i32* @LOG_WARNING, align 4
  %130 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %131 = call i32 @syslog(i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %128, %119
  %133 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %134 = call i32 @strtoul(i8* %133, i8** %6, i32 16)
  store i32 %134, i32* %12, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %146 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %138, %132
  br label %156

148:                                              ; preds = %89
  %149 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %150 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %151 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @snprintf(i8* %149, i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  store i8* %155, i8** %9, align 8
  br label %156

156:                                              ; preds = %148, %147, %114, %101, %100, %99, %98, %97, %96, %95, %94
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32, i32* @LogPHASE, align 4
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.ngpppoe_sts*, %struct.ngpppoe_sts** %5, align 8
  %164 = getelementptr inbounds %struct.ngpppoe_sts, %struct.ngpppoe_sts* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32, i8*, ...) @log_Printf(i32 %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %161, i32 %162, i8* %165)
  br label %171

167:                                              ; preds = %156
  %168 = load i32, i32* @LogPHASE, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 (i32, i8*, ...) @log_Printf(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %167, %159
  %172 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %173 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %184 [
    i32 128, label %176
    i32 134, label %180
    i32 136, label %180
  ]

176:                                              ; preds = %171
  %177 = load i32, i32* @CARRIER_OK, align 4
  %178 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %179 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  br label %184

180:                                              ; preds = %171, %171
  %181 = load i32, i32* @CARRIER_LOST, align 4
  %182 = load %struct.etherdevice*, %struct.etherdevice** %2, align 8
  %183 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %171, %180, %176
  br label %32

185:                                              ; preds = %81, %66, %58, %50
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @free(i32* %186)
  br label %188

188:                                              ; preds = %185, %28, %24
  ret void
}

declare dso_local i32* @mkfdset(...) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @zerofdset(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @NgRecvMsg(i64, %struct.ng_mesg*, i32, i32*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
