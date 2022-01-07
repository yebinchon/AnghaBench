; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_attr_cachelookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_attr_cachelookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.vattr = type { i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smbnode = type { i32, i32, i32, i32, i32 }
%struct.smbmount = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@time_second = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@SMB_FA_RDONLY = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@UF_READONLY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@UF_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_ARCHIVE = common dso_local global i32 0, align 4
@UF_ARCHIVE = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_attr_cachelookup(%struct.vnode* %0, %struct.vattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca %struct.smbmount*, align 8
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.vattr* %1, %struct.vattr** %5, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call %struct.smbnode* @VTOSMB(%struct.vnode* %9)
  store %struct.smbnode* %10, %struct.smbnode** %6, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.smbmount* @VTOSMBFS(%struct.vnode* %11)
  store %struct.smbmount* %12, %struct.smbmount** %7, align 8
  %13 = load i32, i32* @time_second, align 4
  %14 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %15 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %3, align 4
  br label %201

22:                                               ; preds = %2
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vattr*, %struct.vattr** %5, align 8
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.vattr*, %struct.vattr** %5, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 9
  store i32 0, i32* %29, align 4
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VREG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %22
  %36 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %37 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vattr*, %struct.vattr** %5, align 8
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %42 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SMB_FA_RDONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %35
  %48 = load i32, i32* @S_IWUSR, align 4
  %49 = load i32, i32* @S_IWGRP, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @S_IWOTH, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.vattr*, %struct.vattr** %5, align 8
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @UF_READONLY, align 4
  %59 = load %struct.vattr*, %struct.vattr** %5, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %47, %35
  br label %79

64:                                               ; preds = %22
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VDIR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %72 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vattr*, %struct.vattr** %5, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %3, align 4
  br label %201

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %81 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vattr*, %struct.vattr** %5, align 8
  %84 = getelementptr inbounds %struct.vattr, %struct.vattr* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.vattr*, %struct.vattr** %5, align 8
  %86 = getelementptr inbounds %struct.vattr, %struct.vattr* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %88 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vattr*, %struct.vattr** %5, align 8
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %90, i32 0, i32 17
  store i32 %89, i32* %91, align 4
  %92 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %93 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vattr*, %struct.vattr** %5, align 8
  %96 = getelementptr inbounds %struct.vattr, %struct.vattr* %95, i32 0, i32 16
  store i32 %94, i32* %96, align 8
  %97 = load %struct.vnode*, %struct.vnode** %4, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.vattr*, %struct.vattr** %5, align 8
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %106, i32 0, i32 15
  store i32 %105, i32* %107, align 4
  %108 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %109 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vattr*, %struct.vattr** %5, align 8
  %112 = getelementptr inbounds %struct.vattr, %struct.vattr* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.vattr*, %struct.vattr** %5, align 8
  %114 = getelementptr inbounds %struct.vattr, %struct.vattr* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %79
  %118 = load %struct.vattr*, %struct.vattr** %5, align 8
  %119 = getelementptr inbounds %struct.vattr, %struct.vattr* %118, i32 0, i32 3
  store i32 2, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %79
  %121 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %122 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.TYPE_8__* @SSTOVC(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vattr*, %struct.vattr** %5, align 8
  %128 = getelementptr inbounds %struct.vattr, %struct.vattr* %127, i32 0, i32 14
  store i32 %126, i32* %128, align 8
  %129 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %130 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.vattr*, %struct.vattr** %5, align 8
  %133 = getelementptr inbounds %struct.vattr, %struct.vattr* %132, i32 0, i32 11
  store i32 %131, i32* %133, align 4
  %134 = load %struct.vattr*, %struct.vattr** %5, align 8
  %135 = getelementptr inbounds %struct.vattr, %struct.vattr* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vattr*, %struct.vattr** %5, align 8
  %138 = getelementptr inbounds %struct.vattr, %struct.vattr* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 8
  %139 = load %struct.vattr*, %struct.vattr** %5, align 8
  %140 = getelementptr inbounds %struct.vattr, %struct.vattr* %139, i32 0, i32 13
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* @VNOVAL, align 4
  %142 = load %struct.vattr*, %struct.vattr** %5, align 8
  %143 = getelementptr inbounds %struct.vattr, %struct.vattr* %142, i32 0, i32 10
  store i32 %141, i32* %143, align 8
  %144 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %145 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %120
  %151 = load i32, i32* @UF_HIDDEN, align 4
  %152 = load %struct.vattr*, %struct.vattr** %5, align 8
  %153 = getelementptr inbounds %struct.vattr, %struct.vattr* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %120
  %157 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %158 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load i32, i32* @UF_SYSTEM, align 4
  %165 = load %struct.vattr*, %struct.vattr** %5, align 8
  %166 = getelementptr inbounds %struct.vattr, %struct.vattr* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %156
  %170 = load %struct.vnode*, %struct.vnode** %4, align 8
  %171 = getelementptr inbounds %struct.vnode, %struct.vnode* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @VDIR, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %169
  %176 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %177 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SMB_FA_ARCHIVE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* @UF_ARCHIVE, align 4
  %184 = load %struct.vattr*, %struct.vattr** %5, align 8
  %185 = getelementptr inbounds %struct.vattr, %struct.vattr* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %175, %169
  %189 = load i32, i32* @NODEV, align 4
  %190 = load %struct.vattr*, %struct.vattr** %5, align 8
  %191 = getelementptr inbounds %struct.vattr, %struct.vattr* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  %192 = load %struct.vattr*, %struct.vattr** %5, align 8
  %193 = getelementptr inbounds %struct.vattr, %struct.vattr* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.vattr*, %struct.vattr** %5, align 8
  %196 = getelementptr inbounds %struct.vattr, %struct.vattr* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load %struct.vattr*, %struct.vattr** %5, align 8
  %198 = getelementptr inbounds %struct.vattr, %struct.vattr* %197, i32 0, i32 5
  store i64 0, i64* %198, align 8
  %199 = load %struct.vattr*, %struct.vattr** %5, align 8
  %200 = getelementptr inbounds %struct.vattr, %struct.vattr* %199, i32 0, i32 4
  store i64 0, i64* %200, align 8
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %188, %76, %20
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local %struct.smbmount* @VTOSMBFS(%struct.vnode*) #1

declare dso_local %struct.TYPE_8__* @SSTOVC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
