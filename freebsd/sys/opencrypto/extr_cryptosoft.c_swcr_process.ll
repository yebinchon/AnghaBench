; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32, i32, i32*, %struct.cryptodesc*, i32 }
%struct.cryptodesc = type { i64, %struct.cryptodesc* }
%struct.swcr_session = type { i32, %struct.swcr_data* }
%struct.swcr_data = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @swcr_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.swcr_session*, align 8
  %9 = alloca %struct.cryptodesc*, align 8
  %10 = alloca %struct.swcr_data*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.swcr_session* null, %struct.swcr_session** %8, align 8
  %12 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %13 = icmp eq %struct.cryptop* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %170

16:                                               ; preds = %3
  %17 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %18 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %17, i32 0, i32 4
  %19 = load %struct.cryptodesc*, %struct.cryptodesc** %18, align 8
  %20 = icmp eq %struct.cryptodesc* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %23 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %29 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %160

30:                                               ; preds = %21
  %31 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %32 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.swcr_session* @crypto_get_driver_session(i32 %33)
  store %struct.swcr_session* %34, %struct.swcr_session** %8, align 8
  %35 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %36 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %39 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %38, i32 0, i32 4
  %40 = load %struct.cryptodesc*, %struct.cryptodesc** %39, align 8
  store %struct.cryptodesc* %40, %struct.cryptodesc** %9, align 8
  br label %41

41:                                               ; preds = %155, %30
  %42 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %43 = icmp ne %struct.cryptodesc* %42, null
  br i1 %43, label %44, label %159

44:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %48 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %47, i32 0, i32 1
  %49 = load %struct.swcr_data*, %struct.swcr_data** %48, align 8
  %50 = call i64 @nitems(%struct.swcr_data* %49)
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %54 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %53, i32 0, i32 1
  %55 = load %struct.swcr_data*, %struct.swcr_data** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %55, i64 %56
  %58 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %61 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br label %64

64:                                               ; preds = %52, %45
  %65 = phi i1 [ false, %45 ], [ %63, %52 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %45

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %73 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %72, i32 0, i32 1
  %74 = load %struct.swcr_data*, %struct.swcr_data** %73, align 8
  %75 = call i64 @nitems(%struct.swcr_data* %74)
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %80 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %160

81:                                               ; preds = %70
  %82 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %83 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %82, i32 0, i32 1
  %84 = load %struct.swcr_data*, %struct.swcr_data** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %84, i64 %85
  store %struct.swcr_data* %86, %struct.swcr_data** %10, align 8
  %87 = load %struct.swcr_data*, %struct.swcr_data** %10, align 8
  %88 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  switch i64 %89, label %150 [
    i64 148, label %90
    i64 165, label %90
    i64 153, label %90
    i64 151, label %90
    i64 128, label %90
    i64 141, label %90
    i64 156, label %90
    i64 159, label %90
    i64 152, label %90
    i64 150, label %90
    i64 144, label %105
    i64 146, label %108
    i64 138, label %108
    i64 135, label %108
    i64 133, label %108
    i64 131, label %108
    i64 129, label %108
    i64 140, label %108
    i64 143, label %108
    i64 145, label %108
    i64 137, label %108
    i64 147, label %108
    i64 139, label %108
    i64 136, label %108
    i64 134, label %108
    i64 132, label %108
    i64 130, label %108
    i64 155, label %108
    i64 154, label %108
    i64 142, label %108
    i64 158, label %123
    i64 157, label %123
    i64 164, label %123
    i64 163, label %123
    i64 162, label %123
    i64 161, label %123
    i64 160, label %123
    i64 149, label %128
  ]

90:                                               ; preds = %81, %81, %81, %81, %81, %81, %81, %81, %81, %81
  %91 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %92 = load %struct.swcr_data*, %struct.swcr_data** %10, align 8
  %93 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %94 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %97 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @swcr_encdec(%struct.cryptodesc* %91, %struct.swcr_data* %92, i32* %95, i32 %98)
  %100 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %101 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = icmp ne i32 %99, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %160

104:                                              ; preds = %90
  br label %154

105:                                              ; preds = %81
  %106 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %107 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %154

108:                                              ; preds = %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81
  %109 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %110 = load %struct.swcr_data*, %struct.swcr_data** %10, align 8
  %111 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %112 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %115 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @swcr_authcompute(%struct.cryptodesc* %109, %struct.swcr_data* %110, i32* %113, i32 %116)
  %118 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %119 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = icmp ne i32 %117, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %160

122:                                              ; preds = %108
  br label %154

123:                                              ; preds = %81, %81, %81, %81, %81, %81, %81
  %124 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %125 = call i32 @swcr_authenc(%struct.cryptop* %124)
  %126 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %127 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %160

128:                                              ; preds = %81
  %129 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %130 = load %struct.swcr_data*, %struct.swcr_data** %10, align 8
  %131 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %132 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %135 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @swcr_compdec(%struct.cryptodesc* %129, %struct.swcr_data* %130, i32* %133, i32 %136)
  %138 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %139 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = icmp ne i32 %137, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %160

142:                                              ; preds = %128
  %143 = load %struct.swcr_data*, %struct.swcr_data** %10, align 8
  %144 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %148 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142
  br label %154

150:                                              ; preds = %81
  %151 = load i32, i32* @EINVAL, align 4
  %152 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %153 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %160

154:                                              ; preds = %149, %122, %105, %104
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %157 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %156, i32 0, i32 1
  %158 = load %struct.cryptodesc*, %struct.cryptodesc** %157, align 8
  store %struct.cryptodesc* %158, %struct.cryptodesc** %9, align 8
  br label %41

159:                                              ; preds = %41
  br label %160

160:                                              ; preds = %159, %150, %141, %123, %121, %103, %77, %26
  %161 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %162 = icmp ne %struct.swcr_session* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.swcr_session*, %struct.swcr_session** %8, align 8
  %165 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %164, i32 0, i32 0
  %166 = call i32 @mtx_unlock(i32* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %169 = call i32 @crypto_done(%struct.cryptop* %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %14
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.swcr_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @nitems(%struct.swcr_data*) #1

declare dso_local i32 @swcr_encdec(%struct.cryptodesc*, %struct.swcr_data*, i32*, i32) #1

declare dso_local i32 @swcr_authcompute(%struct.cryptodesc*, %struct.swcr_data*, i32*, i32) #1

declare dso_local i32 @swcr_authenc(%struct.cryptop*) #1

declare dso_local i32 @swcr_compdec(%struct.cryptodesc*, %struct.swcr_data*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
