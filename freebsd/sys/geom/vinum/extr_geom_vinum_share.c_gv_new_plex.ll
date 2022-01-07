; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_plex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_plex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"org\00", align 1
@GV_PLEX_RAID5 = common dso_local global i64 0, align 8
@GV_PLEX_STRIPED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"volume\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gv_plex* @gv_new_plex(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.gv_plex*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gv_plex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  store %struct.gv_plex* null, %struct.gv_plex** %3, align 8
  br label %201

21:                                               ; preds = %13
  %22 = call %struct.gv_plex* (...) @gv_alloc_plex()
  store %struct.gv_plex* %22, %struct.gv_plex** %6, align 8
  %23 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %24 = icmp eq %struct.gv_plex* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.gv_plex* null, %struct.gv_plex** %3, align 8
  br label %201

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %190, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %193

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %193

48:                                               ; preds = %39
  %49 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %50 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlcpy(i32 %51, i8* %56, i32 4)
  br label %189

58:                                               ; preds = %31
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %122, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %193

75:                                               ; preds = %66
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @gv_plexorgi(i8* %80)
  %82 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %83 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %85 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GV_PLEX_RAID5, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %75
  %90 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %91 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GV_PLEX_STRIPED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %89, %75
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %193

104:                                              ; preds = %95
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @gv_sizespec(i8* %109)
  %111 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %112 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %114 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %193

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %89
  br label %188

122:                                              ; preds = %58
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %193

139:                                              ; preds = %130
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @gv_plexstatei(i8* %144)
  %146 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %147 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  br label %187

148:                                              ; preds = %122
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %148
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %183, label %164

164:                                              ; preds = %156, %148
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %193

173:                                              ; preds = %164
  %174 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %175 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @strlcpy(i32 %176, i8* %181, i32 4)
  br label %186

183:                                              ; preds = %156
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %193

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %139
  br label %188

188:                                              ; preds = %187, %121
  br label %189

189:                                              ; preds = %188, %48
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %27

193:                                              ; preds = %183, %170, %136, %117, %101, %72, %45, %27
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %198 = call i32 @g_free(%struct.gv_plex* %197)
  store %struct.gv_plex* null, %struct.gv_plex** %3, align 8
  br label %201

199:                                              ; preds = %193
  %200 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  store %struct.gv_plex* %200, %struct.gv_plex** %3, align 8
  br label %201

201:                                              ; preds = %199, %196, %25, %20
  %202 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  ret %struct.gv_plex* %202
}

declare dso_local %struct.gv_plex* @gv_alloc_plex(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @gv_plexorgi(i8*) #1

declare dso_local i64 @gv_sizespec(i8*) #1

declare dso_local i32 @gv_plexstatei(i8*) #1

declare dso_local i32 @g_free(%struct.gv_plex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
