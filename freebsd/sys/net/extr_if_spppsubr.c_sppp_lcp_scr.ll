; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_lcp_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_lcp_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i64*, i64*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@LCP_OPT_MAGIC = common dso_local global i32 0, align 4
@LCP_OPT_MRU = common dso_local global i32 0, align 4
@LCP_OPT_AUTH_PROTO = common dso_local global i32 0, align 4
@PPP_CHAP = common dso_local global i32 0, align 4
@CHAP_MD5 = common dso_local global i8 0, align 1
@IDX_LCP = common dso_local global i64 0, align 8
@PPP_LCP = common dso_local global i32 0, align 4
@CONF_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @sppp_lcp_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_lcp_scr(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  %3 = alloca [15 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.sppp*, %struct.sppp** %2, align 8
  %7 = getelementptr inbounds %struct.sppp, %struct.sppp* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LCP_OPT_MAGIC, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = load %struct.sppp*, %struct.sppp** %2, align 8
  %16 = getelementptr inbounds %struct.sppp, %struct.sppp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = call i32 (...) @random()
  %22 = load %struct.sppp*, %struct.sppp** %2, align 8
  %23 = getelementptr inbounds %struct.sppp, %struct.sppp* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* @LCP_OPT_MAGIC, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %30
  store i8 %27, i8* %31, align 1
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %34
  store i8 6, i8* %35, align 1
  %36 = load %struct.sppp*, %struct.sppp** %2, align 8
  %37 = getelementptr inbounds %struct.sppp, %struct.sppp* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %44
  store i8 %41, i8* %45, align 1
  %46 = load %struct.sppp*, %struct.sppp** %2, align 8
  %47 = getelementptr inbounds %struct.sppp, %struct.sppp* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 16
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load %struct.sppp*, %struct.sppp** %2, align 8
  %57 = getelementptr inbounds %struct.sppp, %struct.sppp* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load %struct.sppp*, %struct.sppp** %2, align 8
  %67 = getelementptr inbounds %struct.sppp, %struct.sppp* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  br label %75

75:                                               ; preds = %25, %1
  %76 = load %struct.sppp*, %struct.sppp** %2, align 8
  %77 = getelementptr inbounds %struct.sppp, %struct.sppp* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LCP_OPT_MRU, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %75
  %85 = load i32, i32* @LCP_OPT_MRU, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %89
  store i8 %86, i8* %90, align 1
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %93
  store i8 4, i8* %94, align 1
  %95 = load %struct.sppp*, %struct.sppp** %2, align 8
  %96 = getelementptr inbounds %struct.sppp, %struct.sppp* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %103
  store i8 %100, i8* %104, align 1
  %105 = load %struct.sppp*, %struct.sppp** %2, align 8
  %106 = getelementptr inbounds %struct.sppp, %struct.sppp* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %84, %75
  %115 = load %struct.sppp*, %struct.sppp** %2, align 8
  %116 = getelementptr inbounds %struct.sppp, %struct.sppp* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LCP_OPT_AUTH_PROTO, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %167

123:                                              ; preds = %114
  %124 = load %struct.sppp*, %struct.sppp** %2, align 8
  %125 = getelementptr inbounds %struct.sppp, %struct.sppp* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @LCP_OPT_AUTH_PROTO, align 4
  %129 = trunc i32 %128 to i8
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %132
  store i8 %129, i8* %133, align 1
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @PPP_CHAP, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 5, i32 4
  %139 = trunc i32 %138 to i8
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %142
  store i8 %139, i8* %143, align 1
  %144 = load i32, i32* %5, align 4
  %145 = ashr i32 %144, 8
  %146 = trunc i32 %145 to i8
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %149
  store i8 %146, i8* %150, align 1
  %151 = load i32, i32* %5, align 4
  %152 = trunc i32 %151 to i8
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %155
  store i8 %152, i8* %156, align 1
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @PPP_CHAP, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %123
  %161 = load i8, i8* @CHAP_MD5, align 1
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %164
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %160, %123
  br label %167

167:                                              ; preds = %166, %114
  %168 = load %struct.sppp*, %struct.sppp** %2, align 8
  %169 = getelementptr inbounds %struct.sppp, %struct.sppp* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @IDX_LCP, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = load %struct.sppp*, %struct.sppp** %2, align 8
  %176 = getelementptr inbounds %struct.sppp, %struct.sppp* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @IDX_LCP, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %174, i64* %179, align 8
  %180 = load %struct.sppp*, %struct.sppp** %2, align 8
  %181 = load i32, i32* @PPP_LCP, align 4
  %182 = load i32, i32* @CONF_REQ, align 4
  %183 = load %struct.sppp*, %struct.sppp** %2, align 8
  %184 = getelementptr inbounds %struct.sppp, %struct.sppp* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* @IDX_LCP, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = bitcast [15 x i8]* %3 to i8**
  %191 = call i32 @sppp_cp_send(%struct.sppp* %180, i32 %181, i32 %182, i64 %188, i32 %189, i8** %190)
  ret void
}

declare dso_local i32 @random(...) #1

declare dso_local i32 @sppp_cp_send(%struct.sppp*, i32, i32, i64, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
