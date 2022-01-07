; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32, i64, %struct.klist*, %struct.klist* }
%struct.klist = type { i32 }
%struct.filterops = type { i64 }

@KQEXTENT = common dso_local global i64 0, align 8
@M_KQUEUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KQ_CLOSING = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@KN_HASHSIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@HASH_WAITOK = common dso_local global i32 0, align 4
@HASH_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, %struct.filterops*, i64, i32)* @kqueue_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_expand(%struct.kqueue* %0, %struct.filterops* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca %struct.filterops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.klist*, align 8
  %11 = alloca %struct.klist*, align 8
  %12 = alloca %struct.klist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %6, align 8
  store %struct.filterops* %1, %struct.filterops** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %18 = call i32 @KQ_NOTOWNED(%struct.kqueue* %17)
  store i32 0, i32* %14, align 4
  store %struct.klist* null, %struct.klist** %12, align 8
  %19 = load %struct.filterops*, %struct.filterops** %7, align 8
  %20 = getelementptr inbounds %struct.filterops, %struct.filterops* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %128

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %27 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %23
  %32 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %33 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %39, %31
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* @KQEXTENT, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %16, align 4
  br label %35

45:                                               ; preds = %35
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @M_KQUEUE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.klist* @malloc(i32 %49, i32 %50, i32 %51)
  store %struct.klist* %52, %struct.klist** %10, align 8
  %53 = load %struct.klist*, %struct.klist** %10, align 8
  %54 = icmp eq %struct.klist* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %5, align 4
  br label %189

57:                                               ; preds = %45
  %58 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %59 = call i32 @KQ_LOCK(%struct.kqueue* %58)
  %60 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %61 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @KQ_CLOSING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.klist*, %struct.klist** %10, align 8
  store %struct.klist* %67, %struct.klist** %12, align 8
  %68 = load i32, i32* @EBADF, align 4
  store i32 %68, i32* %14, align 4
  br label %124

69:                                               ; preds = %57
  %70 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %71 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load %struct.klist*, %struct.klist** %10, align 8
  store %struct.klist* %76, %struct.klist** %12, align 8
  br label %123

77:                                               ; preds = %69
  %78 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %79 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %78, i32 0, i32 4
  %80 = load %struct.klist*, %struct.klist** %79, align 8
  %81 = icmp ne %struct.klist* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %84 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %83, i32 0, i32 4
  %85 = load %struct.klist*, %struct.klist** %84, align 8
  %86 = load %struct.klist*, %struct.klist** %10, align 8
  %87 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %88 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @bcopy(%struct.klist* %85, %struct.klist* %86, i32 %92)
  %94 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %95 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %94, i32 0, i32 4
  %96 = load %struct.klist*, %struct.klist** %95, align 8
  store %struct.klist* %96, %struct.klist** %12, align 8
  %97 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %98 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %97, i32 0, i32 4
  store %struct.klist* null, %struct.klist** %98, align 8
  br label %99

99:                                               ; preds = %82, %77
  %100 = load %struct.klist*, %struct.klist** %10, align 8
  %101 = ptrtoint %struct.klist* %100 to i64
  %102 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %103 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = add i64 %101, %106
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %110 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @bzero(i64 %107, i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %119 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.klist*, %struct.klist** %10, align 8
  %121 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %122 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %121, i32 0, i32 4
  store %struct.klist* %120, %struct.klist** %122, align 8
  br label %123

123:                                              ; preds = %99, %75
  br label %124

124:                                              ; preds = %123, %66
  %125 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %126 = call i32 @KQ_UNLOCK(%struct.kqueue* %125)
  br label %127

127:                                              ; preds = %124, %23
  br label %182

128:                                              ; preds = %4
  %129 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %130 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %181

133:                                              ; preds = %128
  %134 = load i32, i32* @KN_HASHSIZE, align 4
  %135 = load i32, i32* @M_KQUEUE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @M_WAITOK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @HASH_WAITOK, align 4
  br label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @HASH_NOWAIT, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = call %struct.klist* @hashinit_flags(i32 %134, i32 %135, i64* %13, i32 %145)
  store %struct.klist* %146, %struct.klist** %11, align 8
  %147 = load %struct.klist*, %struct.klist** %11, align 8
  %148 = icmp eq %struct.klist* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @ENOMEM, align 4
  store i32 %150, i32* %5, align 4
  br label %189

151:                                              ; preds = %144
  %152 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %153 = call i32 @KQ_LOCK(%struct.kqueue* %152)
  %154 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %155 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @KQ_CLOSING, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load %struct.klist*, %struct.klist** %11, align 8
  store %struct.klist* %161, %struct.klist** %12, align 8
  %162 = load i32, i32* @EBADF, align 4
  store i32 %162, i32* %14, align 4
  br label %178

163:                                              ; preds = %151
  %164 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %165 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.klist*, %struct.klist** %11, align 8
  %170 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %171 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %170, i32 0, i32 3
  store %struct.klist* %169, %struct.klist** %171, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %174 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  br label %177

175:                                              ; preds = %163
  %176 = load %struct.klist*, %struct.klist** %11, align 8
  store %struct.klist* %176, %struct.klist** %12, align 8
  br label %177

177:                                              ; preds = %175, %168
  br label %178

178:                                              ; preds = %177, %160
  %179 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %180 = call i32 @KQ_UNLOCK(%struct.kqueue* %179)
  br label %181

181:                                              ; preds = %178, %128
  br label %182

182:                                              ; preds = %181, %127
  %183 = load %struct.klist*, %struct.klist** %12, align 8
  %184 = load i32, i32* @M_KQUEUE, align 4
  %185 = call i32 @free(%struct.klist* %183, i32 %184)
  %186 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %187 = call i32 @KQ_NOTOWNED(%struct.kqueue* %186)
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %182, %149, %55
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @KQ_NOTOWNED(%struct.kqueue*) #1

declare dso_local %struct.klist* @malloc(i32, i32, i32) #1

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i32 @bcopy(%struct.klist*, %struct.klist*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @KQ_UNLOCK(%struct.kqueue*) #1

declare dso_local %struct.klist* @hashinit_flags(i32, i32, i64*, i32) #1

declare dso_local i32 @free(%struct.klist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
