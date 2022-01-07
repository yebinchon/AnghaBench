; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i8* null, align 8
@ACL_PERM_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_posix1e_check(%struct.acl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %11 = load %struct.acl*, %struct.acl** %3, align 8
  %12 = getelementptr inbounds %struct.acl, %struct.acl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %212

18:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %180, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.acl*, %struct.acl** %3, align 8
  %22 = getelementptr inbounds %struct.acl, %struct.acl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %183

25:                                               ; preds = %19
  %26 = load %struct.acl*, %struct.acl** %3, align 8
  %27 = getelementptr inbounds %struct.acl, %struct.acl* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %162 [
    i32 128, label %34
    i32 132, label %58
    i32 129, label %82
    i32 133, label %98
    i32 130, label %114
    i32 131, label %138
  ]

34:                                               ; preds = %25
  %35 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %36 = load %struct.acl*, %struct.acl** %3, align 8
  %37 = getelementptr inbounds %struct.acl, %struct.acl* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* %35, i8** %42, align 8
  %43 = load %struct.acl*, %struct.acl** %3, align 8
  %44 = getelementptr inbounds %struct.acl, %struct.acl* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %2, align 4
  br label %212

55:                                               ; preds = %34
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %164

58:                                               ; preds = %25
  %59 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %60 = load %struct.acl*, %struct.acl** %3, align 8
  %61 = getelementptr inbounds %struct.acl, %struct.acl* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %59, i8** %66, align 8
  %67 = load %struct.acl*, %struct.acl** %3, align 8
  %68 = getelementptr inbounds %struct.acl, %struct.acl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %2, align 4
  br label %212

79:                                               ; preds = %58
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %164

82:                                               ; preds = %25
  %83 = load %struct.acl*, %struct.acl** %3, align 8
  %84 = getelementptr inbounds %struct.acl, %struct.acl* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %2, align 4
  br label %212

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %164

98:                                               ; preds = %25
  %99 = load %struct.acl*, %struct.acl** %3, align 8
  %100 = getelementptr inbounds %struct.acl, %struct.acl* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %2, align 4
  br label %212

111:                                              ; preds = %98
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %164

114:                                              ; preds = %25
  %115 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %116 = load %struct.acl*, %struct.acl** %3, align 8
  %117 = getelementptr inbounds %struct.acl, %struct.acl* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i8* %115, i8** %122, align 8
  %123 = load %struct.acl*, %struct.acl** %3, align 8
  %124 = getelementptr inbounds %struct.acl, %struct.acl* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %114
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %2, align 4
  br label %212

135:                                              ; preds = %114
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %164

138:                                              ; preds = %25
  %139 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %140 = load %struct.acl*, %struct.acl** %3, align 8
  %141 = getelementptr inbounds %struct.acl, %struct.acl* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i8* %139, i8** %146, align 8
  %147 = load %struct.acl*, %struct.acl** %3, align 8
  %148 = getelementptr inbounds %struct.acl, %struct.acl* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %156 = icmp ne i8* %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %2, align 4
  br label %212

159:                                              ; preds = %138
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %164

162:                                              ; preds = %25
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %2, align 4
  br label %212

164:                                              ; preds = %159, %135, %111, %95, %79, %55
  %165 = load %struct.acl*, %struct.acl** %3, align 8
  %166 = getelementptr inbounds %struct.acl, %struct.acl* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ACL_PERM_BITS, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @ACL_PERM_BITS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %164
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %2, align 4
  br label %212

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %19

183:                                              ; preds = %19
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 1
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 1
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %195, %189, %186, %183
  %199 = load i32, i32* @EINVAL, align 4
  store i32 %199, i32* %2, align 4
  br label %212

200:                                              ; preds = %195, %192
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @EINVAL, align 4
  store i32 %210, i32* %2, align 4
  br label %212

211:                                              ; preds = %206, %203
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %209, %198, %177, %162, %157, %133, %109, %93, %77, %53, %16
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
