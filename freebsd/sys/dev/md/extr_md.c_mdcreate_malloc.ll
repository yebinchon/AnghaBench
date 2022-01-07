; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdcreate_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.md_req = type { i32, i64, i64, i64 }

@MD_AUTOUNIT = common dso_local global i32 0, align 4
@MD_COMPRESS = common dso_local global i32 0, align 4
@MD_RESERVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_FORCE = common dso_local global i32 0, align 4
@md_malloc_wait = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.md_req*)* @mdcreate_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdcreate_malloc(%struct.md_s* %0, %struct.md_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca %struct.md_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.md_s* %0, %struct.md_s** %4, align 8
  store %struct.md_req* %1, %struct.md_req** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.md_req*, %struct.md_req** %5, align 8
  %11 = getelementptr inbounds %struct.md_req, %struct.md_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MD_AUTOUNIT, align 4
  %14 = load i32, i32* @MD_COMPRESS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MD_RESERVE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %12, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %156

23:                                               ; preds = %2
  %24 = load %struct.md_req*, %struct.md_req** %5, align 8
  %25 = getelementptr inbounds %struct.md_req, %struct.md_req* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.md_req*, %struct.md_req** %5, align 8
  %30 = getelementptr inbounds %struct.md_req, %struct.md_req* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @powerof2(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %156

36:                                               ; preds = %28, %23
  %37 = load %struct.md_req*, %struct.md_req** %5, align 8
  %38 = getelementptr inbounds %struct.md_req, %struct.md_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MD_RESERVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @MD_COMPRESS, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.md_req*, %struct.md_req** %5, align 8
  %47 = getelementptr inbounds %struct.md_req, %struct.md_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.md_req*, %struct.md_req** %5, align 8
  %52 = getelementptr inbounds %struct.md_req, %struct.md_req* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.md_req*, %struct.md_req** %5, align 8
  %57 = getelementptr inbounds %struct.md_req, %struct.md_req* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.md_s*, %struct.md_s** %4, align 8
  %60 = getelementptr inbounds %struct.md_s, %struct.md_s* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.md_req*, %struct.md_req** %5, align 8
  %63 = getelementptr inbounds %struct.md_req, %struct.md_req* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.md_req*, %struct.md_req** %5, align 8
  %68 = getelementptr inbounds %struct.md_req, %struct.md_req* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.md_s*, %struct.md_s** %4, align 8
  %71 = getelementptr inbounds %struct.md_s, %struct.md_s* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.md_req*, %struct.md_req** %5, align 8
  %74 = getelementptr inbounds %struct.md_req, %struct.md_req* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MD_COMPRESS, align 4
  %77 = load i32, i32* @MD_FORCE, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load %struct.md_s*, %struct.md_s** %4, align 8
  %81 = getelementptr inbounds %struct.md_s, %struct.md_s* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.md_s*, %struct.md_s** %4, align 8
  %83 = getelementptr inbounds %struct.md_s, %struct.md_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.md_s*, %struct.md_s** %4, align 8
  %86 = getelementptr inbounds %struct.md_s, %struct.md_s* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %84, %87
  %89 = call i32 @dimension(i32 %88)
  %90 = load %struct.md_s*, %struct.md_s** %4, align 8
  %91 = getelementptr inbounds %struct.md_s, %struct.md_s* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.md_s*, %struct.md_s** %4, align 8
  %93 = getelementptr inbounds %struct.md_s, %struct.md_s* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.md_s*, %struct.md_s** %4, align 8
  %96 = getelementptr inbounds %struct.md_s, %struct.md_s* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @uma_zcreate(i32 %94, i32 %97, i32* null, i32* null, i32* null, i32* null, i32 511, i32 0)
  %99 = load %struct.md_s*, %struct.md_s** %4, align 8
  %100 = getelementptr inbounds %struct.md_s, %struct.md_s* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load %struct.md_req*, %struct.md_req** %5, align 8
  %102 = getelementptr inbounds %struct.md_req, %struct.md_req* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MD_RESERVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %72
  %108 = load %struct.md_s*, %struct.md_s** %4, align 8
  %109 = getelementptr inbounds %struct.md_s, %struct.md_s* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.md_s*, %struct.md_s** %4, align 8
  %112 = getelementptr inbounds %struct.md_s, %struct.md_s* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  store i32 %114, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %150, %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %115
  %120 = load %struct.md_s*, %struct.md_s** %4, align 8
  %121 = getelementptr inbounds %struct.md_s, %struct.md_s* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @md_malloc_wait, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @M_WAITOK, align 4
  br label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @M_NOWAIT, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = load i32, i32* @M_ZERO, align 4
  %132 = or i32 %130, %131
  %133 = call i64 @uma_zalloc(i32 %122, i32 %132)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.md_s*, %struct.md_s** %4, align 8
  %138 = getelementptr inbounds %struct.md_s, %struct.md_s* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @s_write(i32 %139, i32 %140, i64 %141)
  store i32 %142, i32* %7, align 4
  br label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @ENOMEM, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %136
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %153

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %115

153:                                              ; preds = %148, %115
  br label %154

154:                                              ; preds = %153, %72
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %34, %21
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @powerof2(i64) #1

declare dso_local i32 @dimension(i32) #1

declare dso_local i32 @uma_zcreate(i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @uma_zalloc(i32, i32) #1

declare dso_local i32 @s_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
