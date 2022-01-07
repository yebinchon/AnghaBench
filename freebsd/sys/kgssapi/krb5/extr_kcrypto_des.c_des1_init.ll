; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.krb5_key_state = type { %struct.des1_state* }
%struct.des1_state = type { i32 }

@des1_init.lastwarn = internal global %struct.timeval zeroinitializer, align 4
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"gss des lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@krb5_warn_interval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DES cipher for Kerberos GSS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*)* @des1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des1_init(%struct.krb5_key_state* %0) #0 {
  %2 = alloca %struct.krb5_key_state*, align 8
  %3 = alloca %struct.des1_state*, align 8
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %2, align 8
  %4 = load i32, i32* @M_GSSAPI, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.des1_state* @malloc(i32 4, i32 %4, i32 %7)
  store %struct.des1_state* %8, %struct.des1_state** %3, align 8
  %9 = load %struct.des1_state*, %struct.des1_state** %3, align 8
  %10 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %9, i32 0, i32 0
  %11 = load i32, i32* @MTX_DEF, align 4
  %12 = call i32 @mtx_init(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %11)
  %13 = load %struct.des1_state*, %struct.des1_state** %3, align 8
  %14 = load %struct.krb5_key_state*, %struct.krb5_key_state** %2, align 8
  %15 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %14, i32 0, i32 0
  store %struct.des1_state* %13, %struct.des1_state** %15, align 8
  %16 = call i64 @ratecheck(%struct.timeval* @des1_init.lastwarn, i32* @krb5_warn_interval)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @gone_in(i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.des1_state* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @ratecheck(%struct.timeval*, i32*) #1

declare dso_local i32 @gone_in(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
