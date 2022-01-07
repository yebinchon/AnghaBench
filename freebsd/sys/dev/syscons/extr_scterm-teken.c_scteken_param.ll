; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@scteken_param.cattrs = internal global [6 x i32] [i32 0, i32 139, i32 138, i32 139, i32 135, i32 137], align 16
@scteken_param.tcattrs = internal global [2 x i32] [i32 143, i32 137], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @scteken_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scteken_param(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %169 [
    i32 132, label %16
    i32 131, label %35
    i32 130, label %102
    i32 129, label %130
    i32 128, label %150
    i32 133, label %156
    i32 134, label %165
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp eq %struct.TYPE_7__* %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sc_set_border(%struct.TYPE_7__* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  br label %169

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 24
  %46 = and i32 %45, 255
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %101 [
    i32 1, label %48
    i32 2, label %67
    i32 3, label %72
  ]

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 6
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* @scteken_param.cattrs, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %63

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* @scteken_param.cattrs, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %64, i32 %65, i32 -1, i32 -1)
  br label %101

67:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 31
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 31
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %35, %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %76, i32 -1, i32 %82, i32 %86)
  br label %100

88:                                               ; preds = %72
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %92, i32 -1, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  br label %100

100:                                              ; preds = %99, %75
  br label %101

101:                                              ; preds = %35, %100, %63
  br label %169

102:                                              ; preds = %3
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* @scteken_param.tcattrs, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %107, i32 %111, i32 -1, i32 -1)
  br label %129

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %117, i32 143, i32 -1, i32 -1)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %122, 139
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, 136
  %127 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %124, i32 %126, i32 -1, i32 -1)
  br label %128

128:                                              ; preds = %116, %113
  br label %129

129:                                              ; preds = %128, %106
  br label %169

130:                                              ; preds = %3
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, -138
  store i32 %138, i32* %8, align 4
  br label %145

139:                                              ; preds = %130
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, 137
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, 136
  %149 = call i32 @sc_change_cursor_shape(%struct.TYPE_7__* %146, i32 %148, i32 -1, i32 -1)
  br label %169

150:                                              ; preds = %3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @sc_switch_scr(%struct.TYPE_8__* %153, i32 %154)
  br label %169

156:                                              ; preds = %3
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @TP_SETBELLPD_PITCH(i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @TP_SETBELLPD_DURATION(i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %169

165:                                              ; preds = %3
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %3, %165, %156, %150, %145, %129, %101, %34
  ret void
}

declare dso_local i32 @sc_set_border(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sc_change_cursor_shape(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @sc_switch_scr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TP_SETBELLPD_PITCH(i32) #1

declare dso_local i32 @TP_SETBELLPD_DURATION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
