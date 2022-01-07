; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_compdec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_compdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i64, i32, i32 }
%struct.swcr_data = type { i64, %struct.comp_algo* }
%struct.comp_algo = type { i64 (i32*, i64, i32**)*, i64 (i32*, i64, i32**)* }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRD_F_COMP = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptodesc*, %struct.swcr_data*, i64, i32)* @swcr_compdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swcr_compdec(%struct.cryptodesc* %0, %struct.swcr_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca %struct.swcr_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.comp_algo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.uio*, align 8
  %16 = alloca i32, align 4
  store %struct.cryptodesc* %0, %struct.cryptodesc** %6, align 8
  store %struct.swcr_data* %1, %struct.swcr_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %18 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %17, i32 0, i32 1
  %19 = load %struct.comp_algo*, %struct.comp_algo** %18, align 8
  store %struct.comp_algo* %19, %struct.comp_algo** %12, align 8
  %20 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %21 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @M_CRYPTO_DATA, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = call i32* @malloc(i64 %22, i32 %23, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %209

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %34 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %37 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @crypto_copydata(i32 %31, i64 %32, i32 %35, i64 %38, i32* %39)
  %41 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %42 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CRD_F_COMP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load %struct.comp_algo*, %struct.comp_algo** %12, align 8
  %49 = getelementptr inbounds %struct.comp_algo, %struct.comp_algo* %48, i32 0, i32 0
  %50 = load i64 (i32*, i64, i32**)*, i64 (i32*, i64, i32**)** %49, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %53 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 %50(i32* %51, i64 %54, i32** %11)
  store i64 %55, i64* %14, align 8
  br label %65

56:                                               ; preds = %30
  %57 = load %struct.comp_algo*, %struct.comp_algo** %12, align 8
  %58 = getelementptr inbounds %struct.comp_algo, %struct.comp_algo* %57, i32 0, i32 1
  %59 = load i64 (i32*, i64, i32**)*, i64 (i32*, i64, i32**)** %58, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %62 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 %59(i32* %60, i64 %63, i32** %11)
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @M_CRYPTO_DATA, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %5, align 4
  br label %209

73:                                               ; preds = %65
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.swcr_data*, %struct.swcr_data** %7, align 8
  %76 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %78 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CRD_F_COMP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %73
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %86 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @M_CRYPTO_DATA, align 4
  %92 = call i32 @free(i32* %90, i32 %91)
  store i32 0, i32* %5, align 4
  br label %209

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i32, i32* %9, align 4
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %98 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @crypto_copyback(i32 %95, i64 %96, i32 %99, i64 %100, i32* %101)
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %105 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %205

108:                                              ; preds = %94
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %111 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %122 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i64, i64* %8, align 8
  %127 = inttoptr i64 %126 to %struct.mbuf*
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @m_adj(%struct.mbuf* %127, i32 %128)
  br label %204

130:                                              ; preds = %108
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @CRYPTO_F_IOV, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %203

135:                                              ; preds = %130
  %136 = load i64, i64* %8, align 8
  %137 = inttoptr i64 %136 to %struct.uio*
  store %struct.uio* %137, %struct.uio** %15, align 8
  %138 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %139 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = sub nsw i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load %struct.uio*, %struct.uio** %15, align 8
  %145 = getelementptr inbounds %struct.uio, %struct.uio* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %178, %135
  %149 = load i32, i32* %13, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %16, align 4
  %153 = icmp sge i32 %152, 0
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i1 [ false, %148 ], [ %153, %151 ]
  br i1 %155, label %156, label %202

156:                                              ; preds = %154
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.uio*, %struct.uio** %15, align 8
  %159 = getelementptr inbounds %struct.uio, %struct.uio* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %157, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %156
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.uio*, %struct.uio** %15, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, %168
  store i32 %177, i32* %175, align 4
  br label %202

178:                                              ; preds = %156
  %179 = load %struct.uio*, %struct.uio** %15, align 8
  %180 = getelementptr inbounds %struct.uio, %struct.uio* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %13, align 4
  %189 = load %struct.uio*, %struct.uio** %15, align 8
  %190 = getelementptr inbounds %struct.uio, %struct.uio* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 4
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %16, align 4
  %198 = load %struct.uio*, %struct.uio** %15, align 8
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 8
  br label %148

202:                                              ; preds = %167, %154
  br label %203

203:                                              ; preds = %202, %130
  br label %204

204:                                              ; preds = %203, %119
  br label %205

205:                                              ; preds = %204, %94
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* @M_CRYPTO_DATA, align 4
  %208 = call i32 @free(i32* %206, i32 %207)
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %205, %89, %71, %28
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @crypto_copydata(i32, i64, i32, i64, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @crypto_copyback(i32, i64, i32, i64, i32*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
