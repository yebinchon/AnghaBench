; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"objp->%s_u.%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&objp->%s_u.%s\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\09switch (objp->%s) {\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09case %s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09\09break;\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09default:\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09\09return (FALSE);\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @emit_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_union(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = call i32 @print_stat(i32 1, %struct.TYPE_13__* %12)
  %14 = load i32, i32* @fout, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @f_print(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %4, align 8
  br label %27

27:                                               ; preds = %115, %1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %119

30:                                               ; preds = %27
  %31 = load i32, i32* @fout, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %115

41:                                               ; preds = %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @streq(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %112, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %53, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %56, %60
  %62 = add nsw i64 %61, 1
  %63 = call i8* @xmalloc(i64 %62)
  store i8* %63, i8** %6, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @isvectordef(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %49
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @s_print(i8* %73, i8* %74, i8* %77, i8* %80)
  br label %92

82:                                               ; preds = %49
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @s_print(i8* %83, i8* %84, i8* %87, i8* %90)
  br label %92

92:                                               ; preds = %82, %72
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @print_ifstat(i32 2, i32 %95, i32 %98, i32 %101, i32 %104, i8* %105, i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @free(i8* %110)
  br label %112

112:                                              ; preds = %92, %41
  %113 = load i32, i32* @fout, align 4
  %114 = call i32 (i32, i8*, ...) @f_print(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %40
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %4, align 8
  br label %27

119:                                              ; preds = %27
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %3, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = icmp ne %struct.TYPE_11__* %125, null
  br i1 %126, label %127, label %206

127:                                              ; preds = %119
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @streq(i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %200, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @fout, align 4
  %135 = call i32 (i32, i8*, ...) @f_print(i32 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strlen(i8* %138)
  %140 = load i8*, i8** %8, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = add nsw i64 %139, %141
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strlen(i8* %145)
  %147 = add nsw i64 %142, %146
  %148 = add nsw i64 %147, 1
  %149 = call i8* @xmalloc(i64 %148)
  store i8* %149, i8** %6, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @isvectordef(i32 %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %133
  %159 = load i8*, i8** %6, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @s_print(i8* %159, i8* %160, i8* %163, i8* %166)
  br label %178

168:                                              ; preds = %133
  %169 = load i8*, i8** %6, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @s_print(i8* %169, i8* %170, i8* %173, i8* %176)
  br label %178

178:                                              ; preds = %168, %158
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @print_ifstat(i32 2, i32 %181, i32 %184, i32 %187, i32 %190, i8* %191, i8* %194)
  %196 = load i8*, i8** %6, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load i32, i32* @fout, align 4
  %199 = call i32 (i32, i8*, ...) @f_print(i32 %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %205

200:                                              ; preds = %127
  %201 = load i32, i32* @fout, align 4
  %202 = call i32 (i32, i8*, ...) @f_print(i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %203 = load i32, i32* @fout, align 4
  %204 = call i32 (i32, i8*, ...) @f_print(i32 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %205

205:                                              ; preds = %200, %178
  br label %211

206:                                              ; preds = %119
  %207 = load i32, i32* @fout, align 4
  %208 = call i32 (i32, i8*, ...) @f_print(i32 %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %209 = load i32, i32* @fout, align 4
  %210 = call i32 (i32, i8*, ...) @f_print(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %211

211:                                              ; preds = %206, %205
  %212 = load i32, i32* @fout, align 4
  %213 = call i32 (i32, i8*, ...) @f_print(i32 %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_stat(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isvectordef(i32, i32) #1

declare dso_local i32 @s_print(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @print_ifstat(i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
