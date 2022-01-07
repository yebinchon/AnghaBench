; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_draw_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/daemon/extr_daemon_saver.c_draw_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DAEMON_MAX_WIDTH = common dso_local global i32 0, align 4
@daemon_pic = common dso_local global i8** null, align 8
@daemon_attr = common dso_local global i32** null, align 8
@FG_LIGHTRED = common dso_local global i32 0, align 4
@BG_BLACK = common dso_local global i32 0, align 4
@FG_YELLOW = common dso_local global i32 0, align 4
@FG_LIGHTBLUE = common dso_local global i32 0, align 4
@FG_LIGHTGREY = common dso_local global i32 0, align 4
@FG_CYAN = common dso_local global i32 0, align 4
@FG_WHITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32)* @draw_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_daemon(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %18, align 4
  br label %22

22:                                               ; preds = %184, %8
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %187

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %19, align 4
  br label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  %33 = load i32, i32* %15, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %19, align 4
  %37 = load i8**, i8*** @daemon_pic, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp sge i32 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %184

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %178, %45
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8**, i8*** @daemon_pic, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %51, %47
  %64 = phi i1 [ false, %47 ], [ %62, %51 ]
  br i1 %64, label %65, label %183

65:                                               ; preds = %63
  %66 = load i32**, i32*** @daemon_attr, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %95 [
    i32 82, label %75
    i32 89, label %79
    i32 66, label %83
    i32 87, label %87
    i32 67, label %91
  ]

75:                                               ; preds = %65
  %76 = load i32, i32* @FG_LIGHTRED, align 4
  %77 = load i32, i32* @BG_BLACK, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %20, align 4
  br label %99

79:                                               ; preds = %65
  %80 = load i32, i32* @FG_YELLOW, align 4
  %81 = load i32, i32* @BG_BLACK, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %20, align 4
  br label %99

83:                                               ; preds = %65
  %84 = load i32, i32* @FG_LIGHTBLUE, align 4
  %85 = load i32, i32* @BG_BLACK, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %20, align 4
  br label %99

87:                                               ; preds = %65
  %88 = load i32, i32* @FG_LIGHTGREY, align 4
  %89 = load i32, i32* @BG_BLACK, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %20, align 4
  br label %99

91:                                               ; preds = %65
  %92 = load i32, i32* @FG_CYAN, align 4
  %93 = load i32, i32* @BG_BLACK, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %20, align 4
  br label %99

95:                                               ; preds = %65
  %96 = load i32, i32* @FG_WHITE, align 4
  %97 = load i32, i32* @BG_BLACK, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %95, %91, %87, %83, %79, %75
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %99
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %109, %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i8**, i8*** @daemon_pic, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i64
  %133 = getelementptr inbounds i32, i32* %122, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @ATTR(i32 %135)
  %137 = call i32 @sc_vtb_putc(i32* %106, i32 %119, i32 %134, i32 %136)
  br label %177

138:                                              ; preds = %99
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %145, %150
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* @DAEMON_MAX_WIDTH, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %19, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i8**, i8*** @daemon_pic, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i64 @xflip_symbol(i8 signext %170)
  %172 = getelementptr inbounds i32, i32* %161, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @ATTR(i32 %174)
  %176 = call i32 @sc_vtb_putc(i32* %142, i32 %158, i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %138, %102
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %47

183:                                              ; preds = %63
  br label %184

184:                                              ; preds = %183, %44
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %22

187:                                              ; preds = %22
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sc_vtb_putc(i32*, i32, i32, i32) #1

declare dso_local i32 @ATTR(i32) #1

declare dso_local i64 @xflip_symbol(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
