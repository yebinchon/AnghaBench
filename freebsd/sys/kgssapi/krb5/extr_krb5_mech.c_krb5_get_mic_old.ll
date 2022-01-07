; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_get_mic_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_get_mic_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mbuf = type { i32, i32*, %struct.mbuf* }

@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf*, %struct.mbuf**, i32*)* @krb5_get_mic_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_get_mic_old(%struct.krb5_context* %0, %struct.mbuf* %1, %struct.mbuf** %2, i32* %3) #0 {
  %5 = alloca %struct.krb5_context*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [8 x i8], align 1
  store %struct.krb5_context* %0, %struct.krb5_context** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = call i64 @m_length(%struct.mbuf* %19, %struct.mbuf** %9)
  store i64 %20, i64* %15, align 8
  %21 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %22 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @token_length(i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32* @krb5_make_token(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26, %struct.mbuf** %10)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %12, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %12, align 8
  store i32 255, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %12, align 8
  store i32 255, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %12, align 8
  store i32 255, i32* %44, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  store i32 255, i32* %46, align 4
  %48 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %49 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %16, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = ptrtoint i32* %55 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  store %struct.mbuf* %66, %struct.mbuf** %68, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = load i32, i32* @MT_DATA, align 4
  %72 = call i32 @MGET(%struct.mbuf* %69, i32 %70, i32 %71)
  %73 = load i64, i64* %16, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 2
  store %struct.mbuf* %77, %struct.mbuf** %79, align 8
  %80 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %81 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 8
  %88 = load i64, i64* %15, align 8
  %89 = add i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %16, align 8
  %92 = call i32 @krb5_checksum(%struct.TYPE_4__* %82, i32 15, %struct.mbuf* %83, i32 %87, i32 %90, i64 %91)
  %93 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 (i32*, ...) @bcopy(i32* %95, i32* %97, i64 %98)
  %100 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %101, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %103, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %105 = call i32 @m_free(%struct.mbuf* %104)
  %106 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %107 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %106, i32 0, i32 1
  %108 = call i32 @atomic_fetchadd_32(i32* %107, i32 1)
  store i32 %108, i32* %17, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 17
  br i1 %112, label %113, label %130

113:                                              ; preds = %4
  %114 = load i32, i32* %17, align 4
  %115 = ashr i32 %114, 24
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %17, align 4
  %119 = ashr i32 %118, 16
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %17, align 4
  %123 = ashr i32 %122, 8
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %17, align 4
  %127 = ashr i32 %126, 0
  %128 = load i32*, i32** %12, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %127, i32* %129, align 4
  br label %147

130:                                              ; preds = %4
  %131 = load i32, i32* %17, align 4
  %132 = ashr i32 %131, 0
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %17, align 4
  %136 = ashr i32 %135, 8
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %17, align 4
  %140 = ashr i32 %139, 16
  %141 = load i32*, i32** %12, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %17, align 4
  %144 = ashr i32 %143, 24
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %130, %113
  %148 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %149 = call i64 @is_initiator(%struct.krb5_context* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %13, align 4
  br label %153

152:                                              ; preds = %147
  store i32 255, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 6
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %169 = call i32 (i32*, ...) @bcopy(i32* %167, i8* %168, i32 8)
  %170 = load i64, i64* %16, align 8
  %171 = add i64 8, %170
  %172 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %173 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 8
  %178 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %179 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %182 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %183 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %16, align 8
  %187 = sub i64 %185, %186
  %188 = sub i64 %187, 8
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %190 = call i32 @krb5_encrypt(i32 %180, %struct.mbuf* %181, i64 %188, i32 8, i8* %189, i32 8)
  %191 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %192 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %191, %struct.mbuf** %192, align 8
  %193 = load i32, i32* @GSS_S_COMPLETE, align 4
  ret i32 %193
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i64 @token_length(i32) #1

declare dso_local i32* @krb5_make_token(i8*, i64, i64, %struct.mbuf**) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @krb5_checksum(%struct.TYPE_4__*, i32, %struct.mbuf*, i32, i32, i64) #1

declare dso_local i32 @bcopy(i32*, ...) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @atomic_fetchadd_32(i32*, i32) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_encrypt(i32, %struct.mbuf*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
