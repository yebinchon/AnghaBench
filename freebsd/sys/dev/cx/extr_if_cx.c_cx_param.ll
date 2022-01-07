; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.termios = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"cx_param (hangup)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cx_param\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.termios*)* @cx_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_param(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = call i32 (...) @splhigh()
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @CX_LOCK(i32* %20)
  %22 = load %struct.termios*, %struct.termios** %5, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @cx_set_dtr(%struct.TYPE_8__* %29, i32 0)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @CX_UNLOCK(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @splx(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i32 @CX_DEBUG2(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %187

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i32 @CX_DEBUG2(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.termios*, %struct.termios** %5, align 8
  %41 = getelementptr inbounds %struct.termios, %struct.termios* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 300
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.termios*, %struct.termios** %5, align 8
  %46 = getelementptr inbounds %struct.termios, %struct.termios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 262144
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %37
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @CX_UNLOCK(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @splx(i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %187

55:                                               ; preds = %44
  %56 = load %struct.termios*, %struct.termios** %5, align 8
  %57 = getelementptr inbounds %struct.termios, %struct.termios* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.termios*, %struct.termios** %5, align 8
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 300
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.termios*, %struct.termios** %5, align 8
  %67 = getelementptr inbounds %struct.termios, %struct.termios* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 262144
  br i1 %69, label %70, label %76

70:                                               ; preds = %65, %60
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @CX_UNLOCK(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @splx(i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %187

76:                                               ; preds = %65, %55
  %77 = load %struct.termios*, %struct.termios** %5, align 8
  %78 = getelementptr inbounds %struct.termios, %struct.termios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tty*, %struct.tty** %4, align 8
  %81 = getelementptr inbounds %struct.tty, %struct.tty* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.termios*, %struct.termios** %5, align 8
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.tty*, %struct.tty** %4, align 8
  %85 = getelementptr inbounds %struct.tty, %struct.tty* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 8
  %86 = load %struct.termios*, %struct.termios** %5, align 8
  %87 = getelementptr inbounds %struct.termios, %struct.termios* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tty*, %struct.tty** %4, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.termios*, %struct.termios** %5, align 8
  %92 = getelementptr inbounds %struct.termios, %struct.termios* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CSIZE, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %96 [
    i32 128, label %97
    i32 129, label %98
    i32 130, label %99
    i32 131, label %100
  ]

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %76, %96
  store i32 8, i32* %9, align 4
  br label %101

98:                                               ; preds = %76
  store i32 7, i32* %9, align 4
  br label %101

99:                                               ; preds = %76
  store i32 6, i32* %9, align 4
  br label %101

100:                                              ; preds = %76
  store i32 5, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %99, %98, %97
  %102 = load %struct.termios*, %struct.termios** %5, align 8
  %103 = getelementptr inbounds %struct.termios, %struct.termios* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PARENB, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = load %struct.termios*, %struct.termios** %5, align 8
  %111 = getelementptr inbounds %struct.termios, %struct.termios* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PARODD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 0, i32 1
  %118 = add nsw i32 1, %117
  %119 = mul nsw i32 %109, %118
  store i32 %119, i32* %10, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %101
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = call i32 @cx_set_dtr(%struct.TYPE_8__* %129, i32 1)
  br label %131

131:                                              ; preds = %126, %101
  %132 = load %struct.tty*, %struct.tty** %4, align 8
  %133 = call i32 @ttyldoptim(%struct.tty* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load %struct.termios*, %struct.termios** %5, align 8
  %138 = getelementptr inbounds %struct.termios, %struct.termios* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.termios*, %struct.termios** %5, align 8
  %143 = getelementptr inbounds %struct.termios, %struct.termios* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CSTOPB, align 4
  %146 = and i32 %144, %145
  %147 = load %struct.termios*, %struct.termios** %5, align 8
  %148 = getelementptr inbounds %struct.termios, %struct.termios* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @PARENB, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.termios*, %struct.termios** %5, align 8
  %156 = getelementptr inbounds %struct.termios, %struct.termios* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CRTSCTS, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.termios*, %struct.termios** %5, align 8
  %161 = getelementptr inbounds %struct.termios, %struct.termios* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IXON, align 4
  %164 = and i32 %162, %163
  %165 = load %struct.termios*, %struct.termios** %5, align 8
  %166 = getelementptr inbounds %struct.termios, %struct.termios* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IXANY, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.termios*, %struct.termios** %5, align 8
  %171 = getelementptr inbounds %struct.termios, %struct.termios* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @VSTART, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.termios*, %struct.termios** %5, align 8
  %177 = getelementptr inbounds %struct.termios, %struct.termios* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @VSTOP, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @cx_set_async_param(%struct.TYPE_8__* %136, i32 %139, i32 %140, i32 %141, i32 %146, i32 %154, i32 %159, i32 %164, i32 %169, i32 %175, i32 %181)
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @CX_UNLOCK(i32* %183)
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @splx(i32 %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %131, %70, %49, %26
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @cx_set_dtr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @CX_DEBUG2(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ttyldoptim(%struct.tty*) #1

declare dso_local i32 @cx_set_async_param(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
