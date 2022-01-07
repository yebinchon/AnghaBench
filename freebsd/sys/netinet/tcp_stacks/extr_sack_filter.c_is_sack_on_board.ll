; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_is_sack_on_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_is_sack_on_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sackblk = type { i32, i32 }

@SACK_FILTER_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sack_filter*, %struct.sackblk*)* @is_sack_on_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sack_on_board(%struct.sack_filter* %0, %struct.sackblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sack_filter*, align 8
  %5 = alloca %struct.sackblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sack_filter* %0, %struct.sack_filter** %4, align 8
  store %struct.sackblk* %1, %struct.sackblk** %5, align 8
  %8 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %9 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %196, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %199

15:                                               ; preds = %11
  %16 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @sack_blk_used(%struct.sack_filter* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %189

20:                                               ; preds = %15
  %21 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %22 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %25 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @SEQ_LT(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %31 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %34 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %37 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %40 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SEQ_LT(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %46 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %49 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %52 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %55 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %209

59:                                               ; preds = %50
  %60 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %61 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %69 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @SEQ_LEQ(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %59
  %74 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %75 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %83 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @SEQ_GEQ(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %209

88:                                               ; preds = %73, %59
  %89 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %90 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %98 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @SEQ_LT(i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %190

103:                                              ; preds = %88
  %104 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %105 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %113 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @SEQ_GT(i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %190

118:                                              ; preds = %103
  %119 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %120 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %128 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @SEQ_LEQ(i32 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %118
  %133 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %134 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %142 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %144 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %147 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 %145, i32* %152, align 4
  br label %190

153:                                              ; preds = %118
  %154 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %155 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %163 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @SEQ_GEQ(i32 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %153
  %168 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %169 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %177 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %179 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %182 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %181, i32 0, i32 1
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 %180, i32* %187, align 4
  br label %190

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188, %15
  br label %190

190:                                              ; preds = %189, %167, %132, %117, %102
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %194 = load i32, i32* %6, align 4
  %195 = srem i32 %194, %193
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %11

199:                                              ; preds = %11
  %200 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %201 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.sackblk*, %struct.sackblk** %5, align 8
  %204 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %202, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %209

208:                                              ; preds = %199
  store i32 1, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %207, %87, %58
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i32) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
