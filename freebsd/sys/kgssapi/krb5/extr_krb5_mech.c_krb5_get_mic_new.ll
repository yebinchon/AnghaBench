; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_get_mic_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_get_mic_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, i32, %struct.krb5_key_state* }
%struct.krb5_key_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mbuf = type { i32, i32*, %struct.mbuf* }

@MLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"checksum too large for an mbuf\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@GSS_TOKEN_SENT_BY_ACCEPTOR = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_TOKEN_ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf*, %struct.mbuf**)* @krb5_get_mic_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_get_mic_new(%struct.krb5_context* %0, %struct.mbuf* %1, %struct.mbuf** %2) #0 {
  %4 = alloca %struct.krb5_context*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %6, align 8
  %15 = load %struct.krb5_context*, %struct.krb5_context** %4, align 8
  %16 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %15, i32 0, i32 2
  %17 = load %struct.krb5_key_state*, %struct.krb5_key_state** %16, align 8
  store %struct.krb5_key_state* %17, %struct.krb5_key_state** %7, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = call i64 @m_length(%struct.mbuf* %18, %struct.mbuf** %8)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %21 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = add i64 16, %25
  %27 = load i32, i32* @MLEN, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ule i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @MT_DATA, align 4
  %35 = call i32 @MGET(%struct.mbuf* %32, i32 %33, i32 %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add i64 16, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @M_ALIGN(%struct.mbuf* %36, i32 %39)
  %41 = load i64, i64* %13, align 8
  %42 = add i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 4, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 4, i32* %52, align 4
  store i32 0, i32* %11, align 4
  %53 = load %struct.krb5_context*, %struct.krb5_context** %4, align 8
  %54 = call i64 @is_acceptor(%struct.krb5_context* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %3
  %57 = load i32, i32* @GSS_TOKEN_SENT_BY_ACCEPTOR, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %3
  %61 = load %struct.krb5_context*, %struct.krb5_context** %4, align 8
  %62 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @GSS_TOKEN_ACCEPTOR_SUBKEY, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 255, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 255, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  store i32 255, i32* %80, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  store i32 255, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  store i32 255, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 8
  store i32 0, i32* %86, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 11
  store i32 0, i32* %92, align 4
  %93 = load %struct.krb5_context*, %struct.krb5_context** %4, align 8
  %94 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %93, i32 0, i32 1
  %95 = call i32 @atomic_fetchadd_32(i32* %94, i32 1)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = ashr i32 %96, 24
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 12
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  %101 = ashr i32 %100, 16
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 13
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %14, align 4
  %105 = ashr i32 %104, 8
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 14
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = ashr i32 %108, 0
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 15
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 2
  store %struct.mbuf* %112, %struct.mbuf** %114, align 8
  %115 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 16
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @krb5_checksum(%struct.krb5_key_state* %115, i32 0, %struct.mbuf* %116, i32 0, i64 %118, i64 %119)
  %121 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %122, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %123, %struct.mbuf** %124, align 8
  %125 = load i32, i32* @GSS_S_COMPLETE, align 4
  ret i32 %125
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i32) #1

declare dso_local i64 @is_acceptor(%struct.krb5_context*) #1

declare dso_local i32 @atomic_fetchadd_32(i32*, i32) #1

declare dso_local i32 @krb5_checksum(%struct.krb5_key_state*, i32, %struct.mbuf*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
