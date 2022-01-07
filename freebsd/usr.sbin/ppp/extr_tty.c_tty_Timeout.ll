; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_14__, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.ttydevice = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@SECTICKS = common dso_local global i32 0, align 4
@TIOCMGET = common dso_local global i32 0, align 4
@CD_DEFAULT = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: Carrier ioctl not supported, using ``set cd off''\0A\00", align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: %s: CD detected\0A\00", align 1
@CD_REQUIRED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: %s: Required CD not detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: %s doesn't support CD\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: %s: Still no carrier (%d/%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: offline -> online\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: online -> offline\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: Carrier lost\0A\00", align 1
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: Still %sline\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tty_Timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_Timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ttydevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.physical*
  store %struct.physical* %8, %struct.physical** %3, align 8
  %9 = load %struct.physical*, %struct.physical** %3, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ttydevice* @device2tty(i32 %11)
  store %struct.ttydevice* %12, %struct.ttydevice** %4, align 8
  %13 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %14 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %13, i32 0, i32 2
  %15 = call i32 @timer_Stop(%struct.TYPE_15__* %14)
  %16 = load i32, i32* @SECTICKS, align 4
  %17 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %18 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %21 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %20, i32 0, i32 2
  %22 = call i32 @timer_Start(%struct.TYPE_15__* %21)
  %23 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %24 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.physical*, %struct.physical** %3, align 8
  %27 = getelementptr inbounds %struct.physical, %struct.physical* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %1
  %31 = load %struct.physical*, %struct.physical** %3, align 8
  %32 = getelementptr inbounds %struct.physical, %struct.physical* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @TIOCMGET, align 4
  %35 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %36 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %35, i32 0, i32 0
  %37 = call i64 @ioctl(i64 %33, i32 %34, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = load %struct.physical*, %struct.physical** %3, align 8
  %41 = getelementptr inbounds %struct.physical, %struct.physical* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CD_DEFAULT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @LogWARN, align 4
  %49 = load %struct.physical*, %struct.physical** %3, align 8
  %50 = getelementptr inbounds %struct.physical, %struct.physical* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %39
  %55 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %56 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %55, i32 0, i32 2
  %57 = call i32 @timer_Stop(%struct.TYPE_15__* %56)
  %58 = load i32, i32* @TIOCM_CD, align 4
  %59 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %60 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %213

61:                                               ; preds = %30
  br label %65

62:                                               ; preds = %1
  %63 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %64 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %61
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %154

68:                                               ; preds = %65
  %69 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %70 = call i64 @Online(%struct.ttydevice* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* @LogPHASE, align 4
  %74 = load %struct.physical*, %struct.physical** %3, align 8
  %75 = getelementptr inbounds %struct.physical, %struct.physical* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.physical*, %struct.physical** %3, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %81)
  br label %153

83:                                               ; preds = %68
  %84 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %85 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %89 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %87, %92
  br i1 %93, label %94, label %131

94:                                               ; preds = %83
  %95 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %96 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CD_REQUIRED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94
  %103 = load i32, i32* @LogPHASE, align 4
  %104 = load %struct.physical*, %struct.physical** %3, align 8
  %105 = getelementptr inbounds %struct.physical, %struct.physical* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.physical*, %struct.physical** %3, align 8
  %109 = getelementptr inbounds %struct.physical, %struct.physical* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %107, i8* %111)
  br label %127

113:                                              ; preds = %94
  %114 = load i32, i32* @LogPHASE, align 4
  %115 = load %struct.physical*, %struct.physical** %3, align 8
  %116 = getelementptr inbounds %struct.physical, %struct.physical* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.physical*, %struct.physical** %3, align 8
  %120 = getelementptr inbounds %struct.physical, %struct.physical* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %118, i8* %122)
  %124 = load i32, i32* @TIOCM_CD, align 4
  %125 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %126 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %113, %102
  %128 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %129 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %128, i32 0, i32 2
  %130 = call i32 @timer_Stop(%struct.TYPE_15__* %129)
  br label %152

131:                                              ; preds = %83
  %132 = load i32, i32* @LogDEBUG, align 4
  %133 = load %struct.physical*, %struct.physical** %3, align 8
  %134 = getelementptr inbounds %struct.physical, %struct.physical* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.physical*, %struct.physical** %3, align 8
  %138 = getelementptr inbounds %struct.physical, %struct.physical* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %142 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %145 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %136, i8* %140, i64 %143, i64 %148)
  %150 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %151 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 8
  br label %152

152:                                              ; preds = %131, %127
  br label %153

153:                                              ; preds = %152, %72
  br label %213

154:                                              ; preds = %65
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %157 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = xor i32 %155, %158
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @TIOCM_CD, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %200

164:                                              ; preds = %154
  %165 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %166 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TIOCM_CD, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i32, i32* @LogDEBUG, align 4
  %173 = load %struct.physical*, %struct.physical** %3, align 8
  %174 = getelementptr inbounds %struct.physical, %struct.physical* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  br label %199

178:                                              ; preds = %164
  %179 = load i32, i32* @LogDEBUG, align 4
  %180 = load %struct.physical*, %struct.physical** %3, align 8
  %181 = getelementptr inbounds %struct.physical, %struct.physical* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @LogPHASE, align 4
  %186 = load %struct.physical*, %struct.physical** %3, align 8
  %187 = getelementptr inbounds %struct.physical, %struct.physical* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load %struct.physical*, %struct.physical** %3, align 8
  %192 = getelementptr inbounds %struct.physical, %struct.physical* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @CLOSE_NORMAL, align 4
  %195 = call i32 @datalink_Down(i32 %193, i32 %194)
  %196 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %197 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %196, i32 0, i32 2
  %198 = call i32 @timer_Stop(%struct.TYPE_15__* %197)
  br label %199

199:                                              ; preds = %178, %171
  br label %212

200:                                              ; preds = %154
  %201 = load i32, i32* @LogDEBUG, align 4
  %202 = load %struct.physical*, %struct.physical** %3, align 8
  %203 = getelementptr inbounds %struct.physical, %struct.physical* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %207 = call i64 @Online(%struct.ttydevice* %206)
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %211 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %205, i8* %210)
  br label %212

212:                                              ; preds = %200, %199
  br label %213

213:                                              ; preds = %54, %212, %153
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_15__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_15__*) #1

declare dso_local i64 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i64 @Online(%struct.ttydevice*) #1

declare dso_local i32 @datalink_Down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
