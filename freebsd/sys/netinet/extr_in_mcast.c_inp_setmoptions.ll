; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inp_setmoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_inp_setmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sockopt = type { i32, i32 }
%struct.ip_moptions = type { i32, i32, i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_setmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPPROTO_DIVERT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %2
  %23 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SOCK_RAW, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_DGRAM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32, %2
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %43, i32* %3, align 4
  br label %164

44:                                               ; preds = %32, %22
  %45 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %46 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %158 [
    i32 135, label %48
    i32 138, label %71
    i32 136, label %75
    i32 137, label %109
    i32 144, label %142
    i32 143, label %142
    i32 132, label %142
    i32 131, label %142
    i32 141, label %146
    i32 140, label %146
    i32 130, label %146
    i32 129, label %146
    i32 142, label %150
    i32 134, label %150
    i32 133, label %150
    i32 128, label %150
    i32 139, label %154
  ]

48:                                               ; preds = %44
  %49 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %50 = call i32 @sooptcopyin(%struct.sockopt* %49, i32* %8, i32 4, i32 4)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %160

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @legal_vif_num(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %7, align 4
  br label %160

63:                                               ; preds = %58, %54
  %64 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %65 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %64)
  store %struct.ip_moptions* %65, %struct.ip_moptions** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %68 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %70 = call i32 @INP_WUNLOCK(%struct.inpcb* %69)
  br label %160

71:                                               ; preds = %44
  %72 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %73 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %74 = call i32 @inp_set_multicast_if(%struct.inpcb* %72, %struct.sockopt* %73)
  store i32 %74, i32* %7, align 4
  br label %160

75:                                               ; preds = %44
  %76 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %77 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %83 = call i32 @sooptcopyin(%struct.sockopt* %82, i32* %9, i32 4, i32 4)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %160

87:                                               ; preds = %81
  br label %101

88:                                               ; preds = %75
  %89 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %90 = call i32 @sooptcopyin(%struct.sockopt* %89, i32* %10, i32 4, i32 4)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %160

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 255
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %7, align 4
  br label %160

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %87
  %102 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %103 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %102)
  store %struct.ip_moptions* %103, %struct.ip_moptions** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %106 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %108 = call i32 @INP_WUNLOCK(%struct.inpcb* %107)
  br label %160

109:                                              ; preds = %44
  %110 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %111 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %117 = call i32 @sooptcopyin(%struct.sockopt* %116, i32* %11, i32 4, i32 4)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %160

121:                                              ; preds = %115
  br label %130

122:                                              ; preds = %109
  %123 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %124 = call i32 @sooptcopyin(%struct.sockopt* %123, i32* %12, i32 4, i32 4)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %160

128:                                              ; preds = %122
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %132 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %131)
  store %struct.ip_moptions* %132, %struct.ip_moptions** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %139 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %141 = call i32 @INP_WUNLOCK(%struct.inpcb* %140)
  br label %160

142:                                              ; preds = %44, %44, %44, %44
  %143 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %144 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %145 = call i32 @inp_join_group(%struct.inpcb* %143, %struct.sockopt* %144)
  store i32 %145, i32* %7, align 4
  br label %160

146:                                              ; preds = %44, %44, %44, %44
  %147 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %148 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %149 = call i32 @inp_leave_group(%struct.inpcb* %147, %struct.sockopt* %148)
  store i32 %149, i32* %7, align 4
  br label %160

150:                                              ; preds = %44, %44, %44, %44
  %151 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %152 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %153 = call i32 @inp_block_unblock_source(%struct.inpcb* %151, %struct.sockopt* %152)
  store i32 %153, i32* %7, align 4
  br label %160

154:                                              ; preds = %44
  %155 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %156 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %157 = call i32 @inp_set_source_filters(%struct.inpcb* %155, %struct.sockopt* %156)
  store i32 %157, i32* %7, align 4
  br label %160

158:                                              ; preds = %44
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %154, %150, %146, %142, %130, %127, %120, %101, %97, %93, %86, %71, %63, %61, %53
  %161 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %162 = call i32 @INP_UNLOCK_ASSERT(%struct.inpcb* %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %42
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @legal_vif_num(i32) #1

declare dso_local %struct.ip_moptions* @inp_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @inp_set_multicast_if(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_join_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_leave_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_block_unblock_source(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_set_source_filters(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @INP_UNLOCK_ASSERT(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
