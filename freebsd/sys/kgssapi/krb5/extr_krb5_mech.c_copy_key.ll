; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_copy_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_copy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_keyblock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_keyblock*, %struct.krb5_keyblock**)* @copy_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_key(%struct.krb5_keyblock* %0, %struct.krb5_keyblock** %1) #0 {
  %3 = alloca %struct.krb5_keyblock*, align 8
  %4 = alloca %struct.krb5_keyblock**, align 8
  store %struct.krb5_keyblock* %0, %struct.krb5_keyblock** %3, align 8
  store %struct.krb5_keyblock** %1, %struct.krb5_keyblock*** %4, align 8
  %5 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %3, align 8
  %6 = getelementptr inbounds %struct.krb5_keyblock, %struct.krb5_keyblock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %3, align 8
  %12 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  store %struct.krb5_keyblock* %11, %struct.krb5_keyblock** %12, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load %struct.krb5_keyblock**, %struct.krb5_keyblock*** %4, align 8
  store %struct.krb5_keyblock* null, %struct.krb5_keyblock** %14, align 8
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
