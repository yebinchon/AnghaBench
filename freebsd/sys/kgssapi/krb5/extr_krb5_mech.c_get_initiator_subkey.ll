; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_initiator_subkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_initiator_subkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, i32, i32 }
%struct.krb5_keyblock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_context*, %struct.krb5_keyblock**)* @get_initiator_subkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_initiator_subkey(%struct.krb5_context* %0, %struct.krb5_keyblock** %1) #0 {
  %3 = alloca %struct.krb5_context*, align 8
  %4 = alloca %struct.krb5_keyblock**, align 8
  store %struct.krb5_context* %0, %struct.krb5_context** %3, align 8
  store %struct.krb5_keyblock** %1, %struct.krb5_keyblock*** %4, align 8
  %5 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %6 = call i64 @is_initiator(%struct.krb5_context* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %10 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %9, i32 0, i32 2
  %11 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  %12 = call i32 @copy_key(i32* %10, %struct.krb5_keyblock** %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %15 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %14, i32 0, i32 1
  %16 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  %17 = call i32 @copy_key(i32* %15, %struct.krb5_keyblock** %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  %20 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %19, align 8
  %21 = icmp ne %struct.krb5_keyblock* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %24 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %23, i32 0, i32 0
  %25 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  %26 = call i32 @copy_key(i32* %24, %struct.krb5_keyblock** %25)
  br label %27

27:                                               ; preds = %22, %18
  ret void
}

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @copy_key(i32*, %struct.krb5_keyblock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
