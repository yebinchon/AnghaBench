; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_sysmouse.c_sysmouse_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_sysmouse.c_sysmouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@sysmouse_event.butmap = internal global [8 x i32] [i32 131, i32 129, i32 130, i32 128, i32 131, i32 129, i32 130, i32 0], align 16
@sysmouse_tty = common dso_local global i32 0, align 4
@mouse_status = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@MOUSE_STDBUTTONS = common dso_local global i64 0, align 8
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@mouse_level = common dso_local global i32 0, align 4
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysmouse_event(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @sysmouse_tty, align 4
  %10 = call i32 @tty_lock(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %61 [
    i32 133, label %14
    i32 131, label %20
    i32 132, label %36
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %1, %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  br label %60

51:                                               ; preds = %36
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  br label %60

60:                                               ; preds = %51, %43
  br label %62

61:                                               ; preds = %1
  br label %188

62:                                               ; preds = %60, %20
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 1), align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 1), align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 2), align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 2), align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 3), align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 3), align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74, %62
  %81 = load i32, i32* @MOUSE_POSCHANGED, align 4
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 5), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  %87 = xor i32 %85, %86
  %88 = or i32 %84, %87
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 4), align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 4), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 4), align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %188

95:                                               ; preds = %83
  %96 = load i32, i32* @sysmouse_tty, align 4
  %97 = call i32 @tty_opened(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %188

100:                                              ; preds = %95
  %101 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @MOUSE_STDBUTTONS, align 8
  %105 = and i64 %103, %104
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* @sysmouse_event.butmap, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %101, %107
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32 %108, i32* %109, align 16
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @imin(i32 %110, i32 255)
  %112 = call i32 @imax(i32 %111, i32 -256)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 1
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %116, %118
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @imin(i32 %121, i32 255)
  %123 = call i32 @imax(i32 %122, i32 -256)
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = ashr i32 %125, 1
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %5, align 4
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %128, %130
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  store i32 %131, i32* %132, align 16
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %144, %100
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i32, i32* @sysmouse_tty, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ttydisc_rint(i32 %138, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %133

147:                                              ; preds = %133
  %148 = load i32, i32* @mouse_level, align 4
  %149 = icmp sge i32 %148, 1
  br i1 %149, label %150, label %185

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @imin(i32 %151, i32 127)
  %153 = call i32 @imax(i32 %152, i32 -128)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = ashr i32 %154, 1
  %156 = and i32 %155, 127
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = ashr i32 %159, 1
  %161 = sub nsw i32 %158, %160
  %162 = and i32 %161, 127
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  store i32 %162, i32* %163, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mouse_status, i32 0, i32 0), align 4
  %165 = xor i32 %164, -1
  %166 = ashr i32 %165, 3
  %167 = and i32 %166, 127
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %181, %150
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load i32, i32* @sysmouse_tty, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ttydisc_rint(i32 %175, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %170

184:                                              ; preds = %170
  br label %185

185:                                              ; preds = %184, %147
  %186 = load i32, i32* @sysmouse_tty, align 4
  %187 = call i32 @ttydisc_rint_done(i32 %186)
  br label %188

188:                                              ; preds = %185, %99, %94, %61
  %189 = load i32, i32* @sysmouse_tty, align 4
  %190 = call i32 @tty_unlock(i32 %189)
  %191 = load i32, i32* %8, align 4
  ret i32 %191
}

declare dso_local i32 @tty_lock(i32) #1

declare dso_local i32 @tty_opened(i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @ttydisc_rint(i32, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(i32) #1

declare dso_local i32 @tty_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
