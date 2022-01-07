; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i64, i64, i32, %struct.sackblk* }
%struct.sackblk = type { i32 }

@TCP_MAX_SACK = common dso_local global i32 0, align 4
@SACK_FILTER_BLOCKS = common dso_local global i64 0, align 8
@over_written = common dso_local global i32 0, align 4
@empty_avail = common dso_local global i32 0, align 4
@highest_used = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sack_filter*, %struct.sackblk*, i32, i32)* @sack_filter_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sack_filter_new(%struct.sack_filter* %0, %struct.sackblk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sack_filter*, align 8
  %7 = alloca %struct.sackblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sack_filter* %0, %struct.sack_filter** %6, align 8
  store %struct.sackblk* %1, %struct.sackblk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @TCP_MAX_SACK, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.sackblk, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %43, %4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %25 = load %struct.sackblk*, %struct.sackblk** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %27
  %29 = call i64 @is_sack_on_board(%struct.sack_filter* %24, %struct.sackblk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %43

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %18, i64 %34
  %36 = load %struct.sackblk*, %struct.sackblk** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %36, i64 %38
  %40 = call i32 @memcpy(%struct.sackblk* %35, %struct.sackblk* %39, i32 4)
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %166

51:                                               ; preds = %46
  %52 = load %struct.sackblk*, %struct.sackblk** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(%struct.sackblk* %52, %struct.sackblk* %18, i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %161, %51
  %62 = load i32, i32* %13, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %164

64:                                               ; preds = %61
  %65 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %18, i64 %67
  %69 = call i64 @is_sack_on_board(%struct.sack_filter* %65, %struct.sackblk* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %161

72:                                               ; preds = %64
  %73 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %74 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %78 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %79 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = urem i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %83 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %84 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @sack_blk_used(%struct.sack_filter* %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %72
  %89 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %90 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %96 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %97 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @sack_move_to_empty(%struct.sack_filter* %95, i64 %98)
  br label %100

100:                                              ; preds = %94, %88, %72
  %101 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %102 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %103 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @sack_blk_used(%struct.sack_filter* %101, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load i32, i32* @over_written, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @over_written, align 4
  %110 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %111 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @empty_avail, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @empty_avail, align 4
  br label %118

118:                                              ; preds = %115, %107
  br label %119

119:                                              ; preds = %118, %100
  %120 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %121 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %120, i32 0, i32 3
  %122 = load %struct.sackblk*, %struct.sackblk** %121, align 8
  %123 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %124 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %122, i64 %125
  %127 = load %struct.sackblk*, %struct.sackblk** %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %127, i64 %129
  %131 = call i32 @memcpy(%struct.sackblk* %126, %struct.sackblk* %130, i32 4)
  %132 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %133 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %134 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @sack_blk_used(%struct.sack_filter* %132, i64 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %119
  %139 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %140 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %144 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @highest_used, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %150 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* @highest_used, align 8
  br label %152

152:                                              ; preds = %148, %138
  %153 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %154 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %155 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @sack_blk_set(%struct.sack_filter* %153, i64 %156)
  %158 = load %struct.sack_filter*, %struct.sack_filter** %6, align 8
  %159 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %152, %119
  br label %161

161:                                              ; preds = %160, %71
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %13, align 4
  br label %61

164:                                              ; preds = %61
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %166

166:                                              ; preds = %164, %49
  %167 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_sack_on_board(%struct.sack_filter*, %struct.sackblk*) #2

declare dso_local i32 @memcpy(%struct.sackblk*, %struct.sackblk*, i32) #2

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i64) #2

declare dso_local i32 @sack_move_to_empty(%struct.sack_filter*, i64) #2

declare dso_local i32 @sack_blk_set(%struct.sack_filter*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
