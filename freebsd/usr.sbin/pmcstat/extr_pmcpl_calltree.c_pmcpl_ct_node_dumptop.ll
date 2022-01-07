; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_dumptop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_dumptop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_node = type { i64, i32, %struct.pmcpl_ct_arc* }
%struct.pmcpl_ct_arc = type { %struct.pmcpl_ct_node*, i32 }
%struct.pmcpl_ct_sample = type { i32 }

@PMCPL_PCT_GREY = common dso_local global i64 0, align 8
@PMCPL_CT_MAXCOL = common dso_local global i32 0, align 4
@pmcpl_ct_topscreen = common dso_local global %struct.pmcpl_ct_node*** null, align 8
@pmcstat_threshold = common dso_local global i64 0, align 8
@PMCPL_CT_MAXLINE = common dso_local global i32 0, align 4
@PMCPL_PCT_BLACK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pmcpl_ct_node*, %struct.pmcpl_ct_sample*, i32, i32*)* @pmcpl_ct_node_dumptop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcpl_ct_node_dumptop(i32 %0, %struct.pmcpl_ct_node* %1, %struct.pmcpl_ct_sample* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmcpl_ct_node*, align 8
  %9 = alloca %struct.pmcpl_ct_sample*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pmcpl_ct_arc*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.pmcpl_ct_node* %1, %struct.pmcpl_ct_node** %8, align 8
  store %struct.pmcpl_ct_sample* %2, %struct.pmcpl_ct_sample** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %16 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PMCPL_PCT_GREY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %207

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PMCPL_CT_MAXCOL, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.pmcpl_ct_node***, %struct.pmcpl_ct_node**** @pmcpl_ct_topscreen, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %26, i64 %28
  %30 = load %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %29, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %30, i64 %33
  store %struct.pmcpl_ct_node* null, %struct.pmcpl_ct_node** %34, align 8
  store i32 1, i32* %6, align 4
  br label %207

35:                                               ; preds = %21
  %36 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %37 = load %struct.pmcpl_ct_node***, %struct.pmcpl_ct_node**** @pmcpl_ct_topscreen, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %37, i64 %39
  %41 = load %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %40, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %41, i64 %44
  store %struct.pmcpl_ct_node* %36, %struct.pmcpl_ct_node** %45, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %81, %35
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %49 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %54 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %53, i32 0, i32 2
  %55 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %55, i64 %57
  store %struct.pmcpl_ct_arc* %58, %struct.pmcpl_ct_arc** %14, align 8
  %59 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %14, align 8
  %60 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %59, i32 0, i32 0
  %61 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %60, align 8
  %62 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PMCPL_PCT_GREY, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %52
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %14, align 8
  %69 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %68, i32 0, i32 1
  %70 = call i64 @PMCPL_CT_SAMPLE(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %14, align 8
  %75 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %74, i32 0, i32 1
  %76 = call i64 @PMCPL_CT_SAMPLEP(i32 %73, i32* %75)
  %77 = load i64, i64* @pmcstat_threshold, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %84

80:                                               ; preds = %72, %66, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %46

84:                                               ; preds = %79, %46
  %85 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %86 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %89, %84
  %93 = load %struct.pmcpl_ct_node***, %struct.pmcpl_ct_node**** @pmcpl_ct_topscreen, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %93, i64 %96
  %98 = load %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %97, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %98, i64 %101
  store %struct.pmcpl_ct_node* null, %struct.pmcpl_ct_node** %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PMCPL_CT_MAXLINE, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  store i32 1, i32* %6, align 4
  br label %207

108:                                              ; preds = %92
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %138, %108
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %113
  %118 = load %struct.pmcpl_ct_node***, %struct.pmcpl_ct_node**** @pmcpl_ct_topscreen, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %118, i64 %120
  %122 = load %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %121, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %122, i64 %126
  %128 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %127, align 8
  %129 = load %struct.pmcpl_ct_node***, %struct.pmcpl_ct_node**** @pmcpl_ct_topscreen, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %129, i64 %131
  %133 = load %struct.pmcpl_ct_node**, %struct.pmcpl_ct_node*** %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %133, i64 %136
  store %struct.pmcpl_ct_node* %128, %struct.pmcpl_ct_node** %137, align 8
  br label %138

138:                                              ; preds = %117
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %113

141:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %207

142:                                              ; preds = %89
  %143 = load i64, i64* @PMCPL_PCT_GREY, align 8
  %144 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %145 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %199, %142
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %149 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %202

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %155 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %154, i32 0, i32 2
  %156 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %156, i64 %158
  %160 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %159, i32 0, i32 1
  %161 = call i64 @PMCPL_CT_SAMPLE(i32 %153, i32* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %199

164:                                              ; preds = %152
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %167 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %166, i32 0, i32 2
  %168 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %168, i64 %170
  %172 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %171, i32 0, i32 1
  %173 = call i64 @PMCPL_CT_SAMPLEP(i32 %165, i32* %172)
  %174 = load i64, i64* @pmcstat_threshold, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %164
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %179 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %178, i32 0, i32 2
  %180 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %180, i64 %182
  %184 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %183, i32 0, i32 0
  %185 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %184, align 8
  %186 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @pmcpl_ct_node_dumptop(i32 %177, %struct.pmcpl_ct_node* %185, %struct.pmcpl_ct_sample* %186, i32 %188, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %176
  %193 = load i8*, i8** @PMCPL_PCT_BLACK, align 8
  %194 = ptrtoint i8* %193 to i64
  %195 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %196 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  store i32 1, i32* %6, align 4
  br label %207

197:                                              ; preds = %176
  br label %198

198:                                              ; preds = %197, %164
  br label %199

199:                                              ; preds = %198, %163
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %146

202:                                              ; preds = %146
  %203 = load i8*, i8** @PMCPL_PCT_BLACK, align 8
  %204 = ptrtoint i8* %203 to i64
  %205 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %8, align 8
  %206 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %202, %192, %141, %107, %25, %20
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i64 @PMCPL_CT_SAMPLE(i32, i32*) #1

declare dso_local i64 @PMCPL_CT_SAMPLEP(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
